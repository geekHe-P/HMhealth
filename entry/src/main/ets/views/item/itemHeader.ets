import router from '@ohos.router'
@Preview
@Component
export default struct itemHeader {
  build() {
    Row() {
      Image($r('app.media.ic_public_back'))
        .width(35)
        .onClick(() => {
          router.back()
        })
      Blank()
      Text('早餐').fontSize(24)
    }.width('100%')
  }
}