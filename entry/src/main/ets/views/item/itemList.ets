@Preview
@Component
export default struct itemList {
  showPanel: () => void

  build() {
    Tabs() {
      TabContent() {
        this.tabContentBuilder()
      }.tabBar('全部')
      TabContent() {
        this.tabContentBuilder()
      }.tabBar('水果')
      TabContent() {
        this.tabContentBuilder()
      }.tabBar('蔬菜')
      TabContent() {
        this.tabContentBuilder()
      }.tabBar('蛋奶')
      TabContent() {
        this.tabContentBuilder()
      }.tabBar('肉')
    }.height('100%')
  }

  @Builder tabContentBuilder() {
    List() {
      ForEach(
        [1,2,3,4,5,6,7,8,9],
        item => {
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
              Image($r('app.media.ic_public_add_norm_filled'))
                .fillColor(Color.Green)
                .width(20)
                .onClick(() => {
                  this.showPanel()
                })
            }.width('100%')
          }
        }
      )
    }
    .width('100%')
    .height('100%')
  }
}