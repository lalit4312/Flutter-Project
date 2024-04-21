class CircleModel {
  double? radius;

  CircleModel({
    this.radius,
  });

  double areaofcircle() {
    return (22 / 7) * (radius!) * (radius!);
  }
}
