@Component
export default struct calorieStats {
  intake: number = 123
  recommend: number = 1234

  build() {
    Row() {
      Column() {
        Text('饮食摄取')
          .fontWeight(FontWeight.Bold)
          .fontSize(16)
        Text(this.intake.toString())
          .fontSize(14)
      }
      Stack() {
        Column() {
          Text('还可以吃')
            .fontWeight(FontWeight.Bold)
            .fontSize(16)
          Text((this.recommend - this.intake).toPrecision())
            .fontSize(14)
          Text('推荐'+this.recommend.toString())
            .fontSize(15)
        }
        Progress({
          value: this.intake,
          total: this.recommend,
          type: ProgressType.Ring,
        })
          .color($r('app.color.primary_color'))
          .width(120)
          .style({
            strokeWidth: 10,
          })
      }
      Column() {
        Text('运功消耗')
          .fontWeight(FontWeight.Bold)
          .fontSize(16)
        Text('123')
          .fontSize(14)
      }
    }
    .justifyContent(FlexAlign.SpaceEvenly)

  }
}