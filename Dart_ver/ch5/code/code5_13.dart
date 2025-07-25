// バッドコード
// if(messageModelList.hasValidModel(messageId)) {
//     if(messageListPresenter.isMessageShown(messageId)) {
//         if(requestQueue.contains(messageId)) {
//             showStatusText("Sending");
//         }
//     }
// }

// このコードは上記のコードと完全に一致しない

// final isMessageValid = messageModelList.hasValidModel(messageId);
// final isMessageViewShown = messageListPresenter.isMessageShown(messageId);
// final isMessageSendingOngoing = requestQueue.contains(messageId);
// if (isMessageValid && isMessageViewShown && isMessageSendingOngoing) {
//   showStatusText("Sending");
// }

// // グッドコード ~ ネストをプライベート関数で解消 ~

// bool _isMessageValid(MessageId messageId) =>
//     messageModelList.hasValidModel(messageId);

// bool _isViewShownFor(MessageId messageId) =>
//     messageListPresenter.isMessageShown(messageId);

// bool _isUnderSending(MessageId messageId) =>
//     requestQueue.contains(messageId);

// if (_isMessageValid(messageId) &&
//       _isViewShownFor(messageId) &&
//       _isUnderSending(messageId)) {
//     showStatusText("Sending");
// }