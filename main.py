import glob
import os

import esdl
from esdl.esdl_handler import EnergySystemHandler
from esdl import Point, Line, Polygon

from ESDLGeometry import calculate_polygon_center

DATA_DIR = './data'

# The next lines of code allow us to call 'print(asset.geometry)'
# The following ESDL classes then know how to print themselves
Point.__repr__ = lambda p: '[{}, {}]'.format(p.lat, p.lon)
Line.__repr__ = lambda l: '[' + ', '.join([p.__repr__() for p in l.point]) + ']'
# Only print coordinates of outer polygon, forget about holes for now
Polygon.__repr__ = lambda p: '[[' + ', '.join([p.__repr__() for p in p.exterior.point]) + ']]'


def print_obj_geometry(obj, level):
    """
    Prints information about the esdl object. Can be called with both instances of esdl.Asset and esdl.Area
    """
    geom = obj.geometry
    if geom:
        print(f"{' ' * level * 2}- {obj.eClass.name} '{obj.name}' (ID:{obj.id}) has geometry {obj.geometry.eClass.name}: " +
              f"{obj.geometry}")
    else:
        print(f"{' ' * level * 2}- {obj.eClass.name} '{obj.name}' (ID:{obj.id}) has no geometry")


def process_asset(asset, level):
    print_obj_geometry(asset, level)


    # Assets of all subtypes of AbstractBuilding can have assets themselves too
    # Note: We don't use WGS84 coordinates inside buildings
    if isinstance(asset, esdl.AbstractBuilding):
        for building_asset in asset.asset:
            process_asset(building_asset, level+1)


def process_area(area, level):
    print_obj_geometry(area, level)

    # Recursively call this function for areas in areas
    for sub_area in area.area:
        process_area(sub_area, level+1)

    for asset in area.asset:
        process_asset(asset, level+1)


def collect_connections(es: esdl.EnergySystem):
    connections = dict()

    # Iterate over all contents of an EnergySystem
    for obj in es.eAllContents():
        # Filter out EnergyAssets (which have ports)
        if isinstance(obj, esdl.EnergyAsset):
            # Iterate over all ports of this asset
            for port in obj.port:
                # Iterate over all connected ports of this port
                for ct_port in port.connectedTo:
                    # Get the asset to which the connected port belongs to
                    ct_asset = ct_port.eContainer()
                    # Make sure connections are found once (and prevent finding them from both sides)
                    if ct_asset.id + '_' + ct_port.id not in connections:
                        connections[obj.id + '_' + port.id] = {
                            "from_port": port,
                            "connected_ports": port.connectedTo
                        }

    return connections


def get_asset_connection_location(asset, port):
    # Assume buildings are not subdivided into building units for now
    if isinstance(asset.eContainer(), esdl.AbstractBuilding):
        geom = asset.eContainer().geometry
    else:
        geom = asset.geometry

    if isinstance(geom, esdl.Polygon):
        # we 'draw' connections that go to assets that are represented as a polygon to the center of this polygon
        lat, lon = calculate_polygon_center(geom)
        return esdl.Point(lat=lat, lon=lon)
    elif isinstance(geom, esdl.Line):
        # lines are used for cables and pipes, the InPort is always at the start of the line (coordinates)
        # and the OutPort at the end
        if isinstance(port, esdl.InPort):
            pnt = geom.point[0]
        else:
            pnt = geom.point[-1]
        return esdl.Point(lat=pnt.lat, lon=pnt.lon)
    elif isinstance(geom, esdl.Point):
        return esdl.Point(lat=geom.lat, lon=geom.lon)
    else:
        print("Unsupported geometry type")


def process_connections(connections):
    print("\nConnections:")
    for conns in connections.values():
        from_port = conns['from_port']
        from_asset = from_port.eContainer()
        for to_port in conns['connected_ports']:
            to_asset = to_port.eContainer()

            if isinstance(from_asset.eContainer(), esdl.AbstractBuilding) and isinstance(to_asset.eContainer, esdl.AbstractBuilding):
                print('===> Ignore in building connections for now')
            else:
                from_location = get_asset_connection_location(from_asset, from_port)
                to_location = get_asset_connection_location(to_asset, to_port)
                conn_line = esdl.Line(point=[from_location, to_location])
                print(f"- {from_asset.eClass.name} '{from_asset.name}' (ID:{from_asset.id}) and "
                      f"{to_asset.eClass.name} '{to_asset.name}' (ID:{to_asset.id}) "
                      f"are connected via: {conn_line}")


if __name__ == "__main__":
    esh = EnergySystemHandler()
    for filename in glob.glob(os.path.join(DATA_DIR, '*.esdl')):
        esh.load_file(filename)

        energy_system = esh.get_energy_system()

        # Assume an ESDL file with only one instance for now
        instance = energy_system.instance[0]
        top_level_area = instance.area
        process_area(top_level_area, level=0)

        connections = collect_connections(energy_system)
        process_connections(connections)
