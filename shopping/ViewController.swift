
import UIKit

class ViewController: UIViewController {
    //數量label IBOutlet
    @IBOutlet weak var quantity1: UILabel!
    @IBOutlet weak var quantity2: UILabel!
    @IBOutlet weak var quantity3: UILabel!
    @IBOutlet weak var quantity4: UILabel!
    //讀Stepper的值
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    //總額laber
    @IBOutlet weak var totalNumber: UILabel!
    
    
    
    
    
    //將stepper的值 轉成整數才不會出現小數點
    var item1:Int=0
    var item2:Int=0
    var item3:Int=0
    var item4:Int=0
    //價格陣列
    var price = [1000,2300,3600,399]
    //宣告總金額
    var totlaPrice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   //stepper 加減數量
    @IBAction func itemStepper(_ sender: UIStepper) {
        item1 = Int(stepper1.value)
        quantity1.text = "\(item1)"
        item2 = Int(stepper2.value)
        quantity2.text = "\(item2)"
        item3 = Int(stepper3.value)
        quantity3.text = "\(item3)"
        item4 = Int(stepper4.value)
        quantity4.text = "\(item4)"
    }
    
    @IBAction func takeTotlaNUmber(_ sender: UIButton) {
        totlaPrice = (item1*price[0])+(item2*price[1])+(item3*price[2])+(item4*price[3])
        totalNumber.text = "\(totlaPrice)"
    }
    
    
}

