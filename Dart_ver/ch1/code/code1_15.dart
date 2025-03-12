/// 単一責任の原則に則っていない例
// class Alviss {
//   // テキスト表示、デバイスの破棄、ロケットの打ち上げ、その他諸々を行うかもれない...
//   void doEverything(UniverseState state) {
//     switch (state) {
//       case UniverseState.Creation:
//         // 宇宙の創造
//         break;
//       case UniverseState.Destruction:
//         // 宇宙の破壊
//         break;
//       case UniverseState.RocketLaunch:
//         // ロケットの打ち上げ
//         break;
//     }
//   }
// }

/// 単一責任の原則に則っていない例
// class LibraryBookRentalData {
//   // 書籍情報。IDとタイトルのリスト
//   final List<BookId> bookIds;
//   final List<String> bookNames;

//   // 書籍の貸し出し情報。利用者の名前と返却期限のマップ
//   final Map<BookId, String> bookIdToRenterNameMap;
//   final Map<BookId, DateTime> bookIdToDueDateMap;

//   LibraryBookRentalData({
//     required this.bookIds,
//     required this.bookNames,
//     required this.bookIdToRenterNameMap,
//     required this.bookIdToDueDateMap,
//   });

//   String? findRenterName(String? bookName) {...}
//   DateTime? findDueDate(String? bookName) {...}
// }

void code1_15() {
  print('code1_15');
}
