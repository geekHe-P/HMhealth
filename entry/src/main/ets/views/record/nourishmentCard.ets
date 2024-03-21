
@Component
export default struct nourishmentCard {
  carbon: number = 0
  protein: number = 0
  fat: number = 0

  carbonRecommend: number = 222
  proteinRecommend: number = 222
  fatRecommend: number = 222

  build() {
    Row() {
      Column() {
        intakeRecommend(this.carbon, this.carbonRecommend)
        Text('碳水化合物(克)')
          .fontSize(12)
          .padding({
            top:10
          })
      }

      Column() {
        intakeRecommend(this.protein, this.proteinRecommend)
        Text('蛋白质(克)')
          .fontSize(12)
          .padding({
            top:10
          })
      }

      Column() {
        intakeRecommend(this.fat, this.fatRecommend)
        Text('脂肪(克)')
          .fontSize(12)
          .padding({
            top:10
          })
      }
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceEvenly)
  }
}

@Builder function intakeRecommend(intake: number, recommend: number) {
  Stack() {
    Column() {
      Text('摄入推荐')
        .fontSize(12)
      Text(`${intake}/${recommend}`)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
    }
    Progress({
      value: intake,
      total: recommend,
      type: ProgressType.Ring,
    })
      .color($r('app.color.primary_color'))
      .width(90)
      .style({
        strokeWidth: 8,
      })
  }
}