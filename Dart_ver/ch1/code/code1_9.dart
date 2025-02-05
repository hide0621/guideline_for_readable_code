/// YAGNI (You ain't gonna need it)の原則

/**
 * グッドコードな座標クラス
 */
class Coodinate {
  final int x;
  final int y;

  const Coodinate(this.x, this.y);

  Coodinate plus(Coodinate that) {
    return Coodinate(x + that.x, y + that.y);
  }
}

// /// バッドコードに繋がっていく...
// enum UnitType {
//   PIXEL,
//   POINT,
// }

// /// バッドコードな座標クラス
// class Coodinate {
//   final double x;
//   final double y;
//   final UnitType unitType;

//   const Coodinate(this.x, this.y, this.unitType);

//   static const int POINTS_PER_INCH = 72;

//   Coodinate plus(
//       Coodinate that, DisplayEnvironment environment, UnitType resultUnitType) {
//     final newX = _convertType(x, unitType, resultUnitType, environment) +
//         _convertType(that.x, that.unitType, resultUnitType, environment);
//     final newY = _convertType(y, unitType, resultUnitType, environment) +
//         _convertType(that.y, that.unitType, resultUnitType, environment);
//     return Coodinate(newX, newY, resultUnitType);
//   }

//   double _convertType(double value, UnitType from, UnitType to,
//       DisplayEnvironment environment) {
//     if (from == to) {
//       return value;
//     }
//     switch (to) {
//       case UnitType.PIXEL:
//         return value * environment.pixelPerInch / POINTS_PER_INCH;
//       case UnitType.POINT:
//         return value * POINTS_PER_INCH / environment.pixelPerInch;
//     }
//   }
// }

// class DisplayEnvironment {
//   final int pixelPerInch;

//   const DisplayEnvironment(this.pixelPerInch);
// }

void code1_9() {
  print('code1_9');
}
