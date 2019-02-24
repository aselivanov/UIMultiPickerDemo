import UIKit
import UIMultiPicker

class ViewController: UIViewController {

    static let TASTES = [
        "Sweet",
        "Sour",
        "Bitter",
        "Salty",
        "Umami"
    ];
    
    @IBOutlet weak var tastesPicker: UIMultiPicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tastesPicker.options = ViewController.TASTES
        tastesPicker.selectedIndexes = [0,2]

        tastesPicker.addTarget(self, action: #selector(ViewController.selected(_:)), for: .valueChanged)

        tastesPicker.color = .gray
        tastesPicker.tintColor = .black
        tastesPicker.font = .systemFont(ofSize: 30, weight: .bold)
        
        tastesPicker.highlight(2, animated: false) // centering "Bitter"
    }
    
    @objc func selected(_ sender: UIMultiPicker) {
        print(sender.selectedIndexes)
    }
}
