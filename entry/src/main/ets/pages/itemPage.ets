import hilog from '@ohos.hilog'
import itemHeader from '../views/item/itemHeader'
import itemList from '../views/item/itemList'
import itemPanel from '../views/item/itemPanel'
@Entry
@Component
struct ItemPage {
  @State panelShow: boolean = true

  onchangeOpen() {
    this.panelShow = true
  }

  onchangeClose() {
    this.panelShow = false
  }

  build() {
   Column() {
     // 1 返回头部
     itemHeader().width('94%')
     // 2 tab
     itemList({ showPanel: this.onchangeOpen.bind(this) })
       .layoutWeight(1)
       // panel
     Panel(this.panelShow) {
        itemPanel({ onchange: this.onchangeClose.bind(this) })
     }.backgroundMask(Color.Gray)
   }
   .width('100%')
   .height('100%')
  }
}