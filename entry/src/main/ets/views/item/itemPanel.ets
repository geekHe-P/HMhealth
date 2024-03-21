@Preview
@Component
export default struct itemPanel {
  onchange: () => void
  @State amount: number = 0

  build() {
    Column() {
      Row() {
        Text('1月5日')
        Text('早餐')
      }
      Image($r('app.media.toast'))
        .width(200)
      Text('全麦吐司')
      Divider().opacity(0.6)
      Row() {
        Column() {
          Text('热量(千焦)')
          Text('65')
        }
        Column() {
          Text('热量(千焦)')
          Text('65')
        }
        Column() {
          Text('热量(千焦)')
          Text('65')
        }
        Column() {
          Text('热量(千焦)')
          Text('65')
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      Divider()
      Row() {
        Column() {
          Text(this.amount.toFixed(1))
            .fontSize(40)
            .fontColor(Color.Green)
            .fontWeight(FontWeight.Bold)
          Divider()
        }.width(100)
        Text('片')
      }
      Button('关闭')
        .onClick(() => {
          this.onchange()
        })


    }
  }
}