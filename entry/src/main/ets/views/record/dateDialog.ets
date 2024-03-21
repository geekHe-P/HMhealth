@CustomDialog
export default struct dateDialog {
  controller: CustomDialogController
  selectedDate: Date = new Date()

  build() {
    Column() {
      DatePicker({
        start: new Date('1970-1-1'),
        end: new Date(),
        selected: this.selectedDate
      })
        .onChange((date: DatePickerResult) => {
          this.selectedDate.setFullYear(date.year, date.month, date.day)
        })
      Row() {
        Button('确实')
          .onClick( () => {
            AppStorage.SetOrCreate('nowDate', this.selectedDate.getTime())
            this.controller.close()
          })
        Button('取消')
          .onClick(() => {
            this.controller.close()
          })
      }
      .margin({
        top: 25,
        bottom: 15
      })
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .margin(10)
  }
}