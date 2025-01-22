/// ボーイスカウトルールに則ってないコード

// enum ViewType {
//   A,
//   B,
//   Y,
// }

// void updateViewProperties(ViewType viewType) {
//   switch (viewType) {
//     case ViewType.A:
//       // view1.isVisible = true;
//       // view2.text = 'Case A';
//       break;
//     case ViewType.B:
//       // view1.isVisible = false;
//       // view2.text = 'Case B';
//       break;
//     case ViewType.Y:
//       // view1.isVisible = true;
//       // view2.text = 'Case Y';
//       break;
//   }
// }

/// ボーイスカウトルールに則ってリファクタリングしたコード

enum ViewType {
  A(true, 'Case A'),
  B(false, 'Case B'),
  Y(true, 'Case Y');

  final bool isView1Visivle;

  final String view2Text;

  const ViewType(
    this.isView1Visivle,
    this.view2Text,
  );
}

void updateViewProperties(ViewType viewType) {
  // view1.isVisible = viewType.isView1Visivle;
  // view2.text = viewType.view2Text;
}

void code1_3() {
  print('code1_3');
}
