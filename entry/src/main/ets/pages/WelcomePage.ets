import common from '@ohos.app.ability.common'
import router from '@ohos.router'
import preferenceUtil from '../common/utils/PreferenceUtil'
import welcomeDialog from '../views/welcome/welcomDialog'
import Logger from '../common/utils/Logger';

@Extend(Text) function textOpacityWhite( opacity: number, textSize: number) {
  .fontColor(Color.White)
  .opacity(opacity)
  .fontSize(textSize)
}

const USE_KET = 'usePrivacyKey'

@Entry
@Component
struct WelcomePage {
  context = getContext(this) as common.UIAbilityContext
  controller: CustomDialogController = new CustomDialogController({
    builder: welcomeDialog({
      confirm: () => this.onConfirm(),
      cancel: () => this.exitApp()
    })
  })

  async onConfirm () {
    await preferenceUtil.putPreferenceValue(USE_KET, true)
    this.jumpPage('pages/Index')
  }

  exitApp () {
    this.context.terminateSelf()
  }

  async aboutToAppear() {
    let isAgree = await preferenceUtil.getPreferenceValue(USE_KET, false)

    // 1 是否弹窗
    if (isAgree) {
      this.jumpPage('pages/Index')
    } else {
      this.controller.open()
    }
  }

  jumpPage(page: string) {
    router.replaceUrl({
      url: page
    })
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.home_slogan'))
          .width('80%')
      }.layoutWeight(1)
      Image($r('app.media.home_logo'))
      .width('60%')
      Row() {
        Text('黑马健康支持')
          .textOpacityWhite(0.8, 16)
        Text('Ipv6')
          .textOpacityWhite(0.8, 16)
          .padding({
            top: 3,
            bottom: 3,
            left: 5,
            right: 5
          })
          .margin(3)
          .border({
            width: 1,
            color: Color.White,
            radius: 15
          })
        Text('网络')
          .textOpacityWhite(0.8, 16)
      }
        .margin({
          bottom: 15
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.welcome_page_background'))
  }
}