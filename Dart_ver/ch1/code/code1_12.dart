/**
 * ただし、以下のコードはpubspec.yamlにrxdartの依存関係を追加する必要がある
 */
// import 'package:rxdart/rxdart.dart';
import 'dart:isolate';

import 'package:rxdart_ext/single.dart';

// 大元のコード
// Single<List<int>> getActualDataSingle() {
//   return Single.fromCallable(() => dataProvider.provide())
//       .subscribeOn(Scheduler.io);
// }

/**
 * Dartでは、非同期処理やバックグラウンド実行を行うために、主に以下の方法が使用されます：

Isolate：Dartの並列処理機能を使用して、別のスレッドで処理を実行します。

Future：非同期処理を表現し、完了後に結果を返します。

compute関数：Flutter特有の機能で、別のIsolateで計算集約型の処理を実行します
 */

/**
 * 大元のコード
 * dartにはsubscribeOnではなくIsolateによってスケジューリングの制御を行うので
 * 以下のように修正する
 */
Single<List<int>> getActualDataSingle() {
  return Single.fromCallable(() {
    return Isolate.run(() => dataProvider.provide());
  });
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