/// バッドコード
// showDialogOnError(
//   presenter.updateSelfProfileView(
//     repository.queryUserModel(userId)
//     )
// );

/// グッドコード ~ 実引数のネストをローカル関数で解消 ~
// final userModel = repository.queryUserModel(userId);

// final viewUpdateResult = presenter.updateSelfProfileView(userModel);

// showDialogOnError(viewUpdateResult);

