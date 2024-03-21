import statsCard from './NutrientStats'
import recordList from './recordList'
import searchHead from './searchHead'
@Preview
@Component
export default struct record {
  build() {
    Column() {
      // 搜索栏+邮件
      searchHead()
      // 热量统计
      statsCard()
      // 食物列表
      recordList()
        .layoutWeight(1)
        .width('94%')
    }
    .width('100%')
    .height('100%')
  }
}