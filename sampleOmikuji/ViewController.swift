
import UIKit

class ViewController: UIViewController {
    
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
    
    var seba = ["daikiti.jpg","kiti.jpg","tyuukiti.jpg","shoukiti.jpeg","suekiti.jpg","kyou.jpeg","daikyou.jpg"]
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //占いボタンが押された時発動
    @IBAction func tapUranai(_ sender: UIButton) {
        
        //占いの結果をランダムに選ぶための数字を作成
        //(７で割っているので０から６しか出てこない)
        let r = Int(arc4random()) % omikuji.count
        
        print("今日の占い:\(omikuji[r])")
        
        //部品となるアラートを作成
        let alert = UIAlertController(title: "占い結果", message: "\(omikuji[r])", preferredStyle: .alert)
        
        //アラートにOKボタンを追加
        //handler : OKボタンが押された時に行いたい処理を指定する場所
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.myImageView.image = UIImage(named: self.seba[r])}))
        
        
        //アラートを表す表示する
        //completion: 動作が完了した後に発動される処理を指定する場所
        present(alert, animated: true, completion: {() -> Void in print("アラート表示されました")})
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

