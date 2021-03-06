import Vue from 'vue'
import App from './App'
import store from './store/index'
import "./assets/style/index.scss";

//引入weui样式
import '../static/weui/weui.css'

Vue.config.productionTip = false
App.mpType = 'app'

Vue.prototype.$store = store

const app = new Vue(App)
app.$mount()

export default {
  // 这个字段走 app.json
  config: {
    // 页面前带有 ^ 符号的，会被编译成首页，其他页面可以选填，我们会自动把 webpack entry 里面的入口页面加进去
    pages: ['^pages/authorization/main', 'pages/index/main', 'pages/scaner/main'],
    window: {
      backgroundTextStyle: 'light',
      backgroundColor:'#ffffff',
      navigationBarBackgroundColor: '#383D41',
      navigationBarTitleText: 'WeChat',
      // navigationBarTextStyle: 'black'
    },
    tabBar: {
      color: '#999999',
      selectedColor: '#1AAD16',
      backgroundColor: '#ffffff',
      borderStyle: 'white',
      list: [{
          pagePath: 'pages/index/main',
          text: '申请',
          iconPath: 'static/images/nav_icon/nav_apply.png',
          selectedIconPath: 'static/images/nav_icon/nav_apply.png'
        },
        {
          pagePath: 'pages/user/index/main',
          text: '我的',
          iconPath: 'static/images/nav_icon/nav_user.png',
          selectedIconPath: 'static/images/nav_icon/nav_user.png'
        }
      ]
    }

  }
}
