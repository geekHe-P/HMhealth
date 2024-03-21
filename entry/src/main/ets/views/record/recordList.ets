import router from '@ohos.router'
@Preview
@Component
export default struct recordList {
  @Builder deleteButtonBuild() {
  Button() {
    Image($r('app.media.ic_public_delete_filled'))
      .width(20)
      .backgroundColor(Color.White)
      .fillColor(Color.Red)
    }
    .padding({
      left: 5,
      right: 5
    })
    .backgroundColor(Color.White)
    .onClick(() => {

    })
  }

  build() {
    Column() {
      List({space: 10}) {
        ForEach(
          [1,2,3,4],
          item => {
            ListItem() {
              Column(){
                Row() {
                  Image($r('app.media.ic_breakfast'))
                    .width(20)
                  Text('早餐')
                    .fontWeight(FontWeight.Bold)
                  Text('建议摄入')
                  Text('111-222')
                  Text('千卡')
                  Blank()
                  Text('123')
                    .fontSize(14)
                    .fontColor(Color.Green)
                    .fontWeight(FontWeight.Bold)
                  Text('千卡')
                  Image($r('app.media.ic_public_add_norm_filled'))
                    .fillColor(Color.Green)
                    .width(20)
                    .onClick(() => {
                      router.pushUrl({
                        url: 'pages/itemPage'
                      })
                    })
                }.width('100%')

                List() {
                  ForEach(
                    [1,2],
                    ite => {
                      ListItem() {
                        Row() {
                          Image($r('app.media.toast'))
                            .width(80)
                          Column(){
                            Text('吐司')
                            Text('1片')
                          }
                          Blank()
                          Text('91')
                          Text('千卡')
                        }.width('100%')
                      }.swipeAction({
                        end: this.deleteButtonBuild()
                      })
                    }
                  )
                }
              }
              .borderRadius(30)
              .backgroundColor(Color.White)
              .padding(20)
            }
          }
        )
      }
      .margin({
        top: 10,
      })
    }.backgroundColor('#f1f1f1')
  }
}
