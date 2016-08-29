# Swift Girls (ios)

## Resources:
- [Facebook](https://www.facebook.com/groups/1260405513988915/)
- [Github](https://github.com/Avonee/swift-girls-meetig_teaching)

## Meetup
### 20160520
- Slides: [First iOS App](http://www.slideshare.net/ssuser6c934d/swift-girls-1stteachingmeeting20160520)

### 20160607 First iOS App @5xRuby
- Slides: [First iOS App(Review)](http://www.slideshare.net/ssuser6c934d/swift-girls-2ndteachingmeeting20160607)
- 版面配置 & 宣告
  - Page 1
  ```swift
  // 放文字的欄位
  @IBOutlet weak var nameInput: UITextField!
  
  // 按鈕
  @IBOutlet weak var nextButton: UIButton!
  ```
  - Page 2
  ```swift
  // 文字顯示欄
  @IBOutlet weak var name_get: UILabel!
  
  // 圖片視圖
  @IBOutlet weak var head: UIImageView!
  ```
- 換頁 & SEQUE傳遞值
  - Page 1
  ```swift
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
  ```swift
  //定義 第二頁接收的是文字
  var name = ""
  override func viewDidLoad(){
      super.viewDidLoad()
      //文字顯示欄裡的文字 = 第二頁接收的文字
      name_get.text = name
  }
  ```
- 圖片遮罩
```swift
// 圖片的遮罩之圓角弧度半徑是圖片本身寬度的1/2
self.head.layer.cornerRadius = self.head.frame.size.width/2

// 圖片的遮罩是否要放上去？
self.head.layer.maskToBounds = true
```
- WEB VIEW
``` swift
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
- Slide: [神奇語法PLAYGROUND遊樂園](http://www.slideshare.net/ssuser6c934d/swift-girls-3rdteachingmeeting20160630)
- Play ground
  - Conditional Statements
    - if (if...else...)
    - switch (switch...case...)
  - For-In Loops
  - While Loops
- 自製GIF
```swift
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
- Slide: [⼋歲都能聽懂的AutoLayout](http://www.slideshare.net/ssuser6c934d/swift-girls-4thteachingmeeting20160725-64098671)
- 排版定位：設定x, y, width, height
- 上下左右分別是：Top, Buttom, Leading, Trailing
- 實作

### 20160829 TableView @Luster
- Slide: [跟著TableView魔⿁的步伐滑滑滑](http://www.slideshare.net/ssuser6c934d/swift-girls-5thteachingmeeting20160829)
- Protocols of TableView
  - UITableViewDataSource: 處理要放進TableView的data
    - numberOfRowInSection
    - cellForRowAtIndexPath
  - UITableViewDelegate: 處理TableView顯示data的layout
- 把class想成是個元件，protocol就像是這個元件的規則 
- 實作
  - Main.storyboard
    - Disable Size Classes
    - Insert unit: Table View
      - Connect to UIViewController with dataSource
      - Connect to UIViewController with delegate
    - Insert unit: Table View Cell
      - Select "Basic" style for TableViewCell
      - Set identifier of TableViewCell
  - ViewController.swift
    - add UITableViewDataSource and UITableViewDelegate to UIViewController
    ```swift
    let zoo = ["皮卡丘", "傑尼龜", "皮皮", "妙蛙種子", "雷丘", "綠毛蟲", "喵貓", "快龍", "鯉魚王", "皮可西", "胖丁", "波克比"]
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zoo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Keys.cellIdentifier, forIndexPath: indexPath) 
        cell.textLabel.text = zoo[indexPath.row]
        return cell
    }
    ```
    
  - Navigation bar
    - Select ViewController
    - Editor -> Embed in -> Navigation Controller
    ```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "ZOO"
    }
    ```
    
  - Add image to Assets.xcassets
    ```swift
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCellWithIdentifier(Keys.cellIdentifier, forIndexPath: indexPath) as! TableViewCell
          cell.photoImageView.image = UIImage(named: photos[(indexPath.row) % photos.count])
          cell.textLabel.text = zoo[indexPath.row]
          cell.imageView?.image = UIImage(named: "images")
          return cell
      }
    ```
    
  - Select "Custom" style for TableViewCell
    - Insert unit: Label
    - Set auto layout with units in TableViewCell
    - File -> New -> File...
    - iOS -> Source -> Cocoa Touch Class -> Next
    - Subclass of: UITableViewCell
    - Connect units of TableViewCell with TableViewCell (Can't use reserved words to name the variables)
    ``` swift
    let photos = ["images", "B612-2015-02-01-10-48-45", "影像110"]
    private struct Keys {
        static let cellIdentifier = "ThisIsACell"
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Keys.cellIdentifier, forIndexPath: indexPath) as! TableViewCell
        cell.photoImageView.image = UIImage(named: photos[(indexPath.row) % photos.count])
        cell.titleLabel.text = zoo[indexPath.row]
        return cell
    }
    ```
