# ShareView
sharesdk自定义视图分享demo







1、Demo是ShareSdk的自定义视图，未采用ShareSdk官方的UI;
*请去Mob官方下载SDK（http://www.mob.com/#/）
*请按平台选择（微信、QQ、新浪微博）

2、下载之后解压，将ShareSdk导入工程

3、添加依赖库
*http://wiki.mob.com/%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90%E6%8C%87%E5%8D%97/

4、在AppDelegate  didFinishLaunchingWithOptions中进行初始化
参照：http://bbs.mob.com/forum.php?mod=viewthread&tid=275&page=1&extra=#pid860
到相应平台提交申请，获取appid和appkey

5、在分享页面实现代码


6、适配问题 （info.plist中设置或者targets ->info设置都一样)

*1⃣️*网络适配
添加 <NSDictionary> App Transport Security Settings
<Boolean> Allow Arbitrary Loads YES


*2⃣️*白名单 跳转客户端问题（如果没有设置，则无法打开，会提示shareView中设置的未安装）

添加  <NSArray>  LSApplicationQueriesSchemes
具体参照：
http://wiki.mob.com/ios9-%E5%AF%B9sharesdk%E7%9A%84%E5%BD%B1%E5%93%8D%EF%BC%88%E9%80%82%E9%85%8Dios-9%E5%BF%85%E8%AF%BB%EF%BC%89/


*3⃣️*URL Schemes(如果没有设置，会提示尚未设置QQ|微信的URL Scheme)

添加参照 http://bbs.mob.com/thread-567-1-1.html
添加分享参数：
~微信：就是在方法3中申请的微信AppId
~QQ : AppId需要转为16进制（直接百度就可以转化）  格式为QQ+八位16进制
QQ格式参照：
http://bbs.mob.com/forum.php?mod=viewthread&tid=60&page=1&extra=#pid79


*4⃣️*BitCode
在targets ->build Settings  直接搜索bitcode 改为 NO


提示：
1、针对分享的图片问题，如果不填写，微信不会有，但是QQ会默认显示在开放平台上传的icon图标；
2、针对分享之后的应用图标信息，都是会显示在开放平台上上传的图标；
3、对于应用名字，微信分享会显示你开放平台的名字，而 QQ则首先会显示你的项目名字，其次是bundle display name,而不会显示开放平台上的名字。
4、客户端（返回）回调是根据appid回调，加入你appid写的是其他应用的appid,则会显示返回其他应用（但不一定能打开），而不会返回你的应用。



