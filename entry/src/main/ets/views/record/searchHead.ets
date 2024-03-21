import { CommonConstants } from '../../common/constants/CommonConstants'

@Component
export default struct searchHead {
  build() {
    Row() {
      Search({
        placeholder: '搜索饮食或运动信息'
      })
        .layoutWeight(1)
      Badge({
        count: 1,
        position: BadgePosition.RightTop,
        style: {
          fontSize: 10
        }
      }) {
        Image($r('app.media.ic_public_email'))
          .width(30)
      }
      .margin({
        left: 6,
        right: 4
      })
    }.width(CommonConstants.THOUSANDTH_940)
  }
}