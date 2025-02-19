/**
 * ただし、以下のコードはpubspec.yamlにrxdartの依存関係を追加する必要がある
 */
// import 'package:rxdart/rxdart.dart';
import 'package:rxdart_ext/single.dart';

// 大元のコード
Single<List<int>> getActualDataSingle() {
  return Single.fromCallable(() => dataProvider.provide())
      .subscribeOn(Scheduler.io);
}


// KISSを踏まえたコード
// Single<List<int>> getStubDataSingle() => Single.just([1, 10, 100]);


// KISSではないコード
// Single<List<int>> getStubDataSingle() {
//   return Single.fromCallable(() => [1, 10, 100])
//       .subscribeOn(Scheduler.io);
// }


// KISSではないコードをより極端にしたもの
// Single<List<int>> getStubDataSingle() {
//   return Observable.range(1, 2)
//       .reduce<List<int>>(
//         [1],
//         (List<int> list, int _) => [...list, list.last * 10],
//       )
//       .subscribeOn(Scheduler.io);
// }