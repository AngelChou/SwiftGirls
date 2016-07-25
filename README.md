# Swift Girls (ios)
---
## Fackbook:
https://www.facebook.com/groups/1260405513988915/

## Github 
https://github.com/Avonee/swift-girls-meetig_teaching

## PPT:
### 20160520
http://www.slideshare.net/ssuser6c934d/swift-girls-1stteachingmeeting20160520
### 20160607 First iOS App @5xRuby
http://www.slideshare.net/ssuser6c934d/swift-girls-2ndteachingmeeting20160607
- 版面配置 & 宣告
  - Page 1
  ```
  // 放文字的欄位
  @IBOutlet weak var nameInput: UITextField!
  
  // 按鈕
  @IBOutlet weak var nextButton: UIButton!
  ```
  - Page 2
  ```
  // 文字顯示欄
  @IBOutlet weak var name_get: UILabel!
  
  // 圖片視圖
  @IBOutlet weak var head: UIImageView!
  ```
- 換頁 & SEQUE傳遞值
  - Page 1
  ```
  // segue的function
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
      // 定義要換頁到哪裏
      // segue的目標(destinationViewController)是(as!)第二頁(View2Controller)
      let second = segue.destinationViewController as! View2Controller
      
      // 第二頁的文字 = 第一頁 放文字欄位裡的文字
      second.name = self.nameInput.text!
  }
  ```
  - Page 2
  ```
  //定義 第二頁接收的是文字
  var name = ""
  override func viewDidLoad(){
      super.viewDidLoad()
      //文字顯示欄裡的文字 = 第二頁接收的文字
      name_get.text = name
  }
  ```
- 圖片遮罩
```
// 圖片的遮罩之圓角弧度半徑是圖片本身寬度的1/2
self.head.layer.cornerRadius = self.head.frame.size.width/2

// 圖片的遮罩是否要放上去？
self.head.layer.maskToBounds = true
```
- WEB VIEW
``` 
// 宣告 web view
@IBOutlet weak var webView: UIWebView!
override func viewDidLoad(){
    super.viewDidLoad()
    
    // 網址爲...
    let address = "http://www.google.com/"
    
    // 網址轉成url型態
    let url = NSURL(string: address)
    
    // 請求使用url
    self.webView.loadRequest(request)
    
    // webview的載入請求
    self.webView.loadRequest(request)
}
```
- 實機測試
  - xcode & iPhone必須都是更新狀態（相符合版本）
  - 註冊免費開發者
  - 登入免費開發者帳號
  - 產生開發憑證
  - 手機設定“信任”

### 20160630 PlayGround and GIF @Mozilla
http://www.slideshare.net/ssuser6c934d/swift-girls-3rdteachingmeeting20160630
- Play ground
  - Conditional Statements
    - if (if...else...)
    - switch (switch...case...)
  - For-In Loops
  - While Loops
- 自製GIF
```
// 宣告動畫Image
@IBOutlet weak var gif_image: UIImageView!
override func viewDidLoad(){
    super.viewDidLoad()
    
    // 設置圖片矩陣
    var imageArray: [UIImage] = []
    
    // for-in loop 把全部圖片放到array內
    for j in 3...8{
        imageArray.append(UIImage(named: "computer_superman_0\(j)_gif")!)
    }
    
    // 動畫Image的動畫圖片是圖片矩陣
    gif_image.animationImages = imageArray
    // 動畫Image的動畫時長
    gif_image.animationDuration = 0.5
    // 動畫Image開始
    gif_image.startAnimating()
}
```
### 20160725 AutoLayout @ALPHA Camp
http://www.slideshare.net/ssuser6c934d/swift-girls-4thteachingmeeting20160725-64098671
- 排版定位：設定x, y, width, height
- 上下左右分別是：Top, Buttom, Leading, Trailing
- 實作
#### 2016 TableView and firebase @
