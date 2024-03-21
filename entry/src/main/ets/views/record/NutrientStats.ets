import DateUtil from '../../common/utils/DateUtil'
import calorieStats from './calorieStats'
import dateDialog from './dateDialog'
import nourishmentCard from './nourishmentCard'

@Component
export default struct statsCard {
  @StorageProp('nowDate') nowDate: number = DateUtil.beginTimeOfDay(new Date())

  controller: CustomDialogController = new CustomDialogController({
    builder: dateDialog()
  })

  build() {
    Column() {
      Row() {
        Text(DateUtil.formatDate(this.nowDate))
        Image($r('app.media.ic_public_spinner'))
          .width(20)
      }
      .padding(10)
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .onClick( () => {
        this.controller.open()
      })

      Swiper() {
        calorieStats()
        nourishmentCard()

      }
      .height(170)
      .width('100%')
      .backgroundColor(Color.White)
      .borderRadius(30)
      .onChange((index: number) => {

      })
    }
    .borderRadius(30)
    .backgroundColor($r('app.color.stats_title_bgc'))
    .width('94%')
  }
}