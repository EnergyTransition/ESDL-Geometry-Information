def calculate_polygon_center(polygon):
    """
    Calculates the centeriod of a polygon
    :param polygon:
    :return:
    """
    exterior = polygon.exterior
    pts = exterior.point

    first = pts[0]
    last = pts[len(pts) - 1]

    if first.lat != last.lat or first.lon != last.lon:
        pts.append(first)

    twice_area = 0
    x = 0
    y = 0

    for i in range(0, len(pts)):
        j = (i + (len(pts) - 1)) % len(pts)
        p1 = pts[i]
        p2 = pts[j]
        f = (p1.lon - first.lon) * (p2.lat - first.lat) - (p2.lon - first.lon) * (p1.lat - first.lat)
        twice_area += f
        x += (p1.lat + p2.lat - 2 * first.lat) * f
        y += (p1.lon + p2.lon - 2 * first.lon) * f
    f = twice_area * 3
    return x / f + first.lat, y / f + first.lon