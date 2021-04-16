//
//  BornViewController.swift
//  PictureStoryShow
//
//  Created by SEZAX development on 16/04/2021.
//

import UIKit

class BornViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func tapButton(_ sender: Any) {
        // What to do?
        // set alert
        let alert = UIAlertController(title: "人生の選択", message: "桃太郎を育てますか？", preferredStyle: UIAlertController.Style.alert)
        // make Yes button
        let yesButton = UIAlertAction(title: "はい", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // Press button then?
            // Go to Next screen("桃太郎画面へ")
            self.performSegue(withIdentifier: "桃太郎画面へ", sender: nil)
        }
        // make No button
        let noButton = UIAlertAction(title: "いいえ", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // Press button then?
            // Go to Gameover screen
            self.performSegue(withIdentifier: "ゲームオーバー画面へ", sender: nil)
        }
        // get alert and button together
        alert.addAction(yesButton)
        alert.addAction(noButton)
        
        // show alert
        self.present(alert, animated: true, completion: nil)
    }
}
