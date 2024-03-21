import recordIndex from '../views/record/recordIndex'

@Entry
@Component
struct Index {
  @State nowIndex: number = 0

  @Builder myTabBar (image: Resource, text: Resource, index: number) {
    Column() {
      Image(image).width(22).fillColor(this.nowIndex === index ? Color.Blue : Color.Gray)
      Text(text).fontSize(14).fontColor(this.nowIndex === index ? Color.Blue : Color.Gray)
    }
  }

  build() {
    // 导航栏
    Tabs() {
      // 记录
      TabContent() {
        recordIndex()
      }
      .backgroundColor('#f1f1f1')
      .tabBar(this.myTabBar($r('app.media.ic_calendar'), $r('app.string.tab_record'), 0))
      .width('100%')

      TabContent() {
      // 发现
      }
      .backgroundColor('#f1f1f1')
      .tabBar(this.myTabBar($r('app.media.discover'), $r('app.string.tab_discover'), 1))
      // 我的
      TabContent() {

      }
      .backgroundColor('#f1f1f1')
      .tabBar(this.myTabBar($r('app.media.ic_user_portrait'), $r('app.string.tab_user'), 2))
    }
    .height('100%')
    .width('100%')
    .barPosition(BarPosition.End)
    .onChange( index => {
      this.nowIndex = index
    })

  }
}
