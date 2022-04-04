import glob
import os
from textwrap import indent

import esdl
from esdl.esdl_handler import EnergySystemHandler
from esdl import Point, Line, Polygon

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


if __name__ == "__main__":
    esh = EnergySystemHandler()
    for filename in glob.glob(os.path.join(DATA_DIR, '*.esdl')):
        esh.load_file(filename)

        energy_system = esh.get_energy_system()

        # Assume an ESDL file with only one instance for now
        instance = energy_system.instance[0]
        top_level_area = instance.area
        process_area(top_level_area, level=0)
