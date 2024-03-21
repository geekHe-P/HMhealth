@Preview
@Component
struct keyBoard {
  keys: string[] = ['1','2','3','4','5','6','7','8','9','0','.']

  build() {
    Grid() {

        ForEach(
          this.keys,
          key => {
            GridItem() {
              Button(key)
            }
          }
        )
    }
    .columnsTemplate('1fr 1fr 1fr')
    .columnsGap(8)
    .rowsGap(8)
  }
}