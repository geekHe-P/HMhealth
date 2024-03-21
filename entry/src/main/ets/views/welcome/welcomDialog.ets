@CustomDialog
export default struct welcomeDialog {
  controller: CustomDialogController
  confirm: () => void
  cancel: () => void

  build() {
    Column() {
      Text($r('app.string.user_privacy_title'))
        .fontWeight(FontWeight.Bold)
        .fontSize(30)
        .margin(10)
      Text($r('app.string.user_privacy_content'))
        .margin(10)
      Row() {
        Button('同意')
          .margin(15)
          .onClick(() => {
            this.confirm()
            this.controller.close()
          })
        Button('不同意')
          .margin(15)
          .onClick(() => {
            this.cancel()
            this.controller.close()
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
    }
  }
}
