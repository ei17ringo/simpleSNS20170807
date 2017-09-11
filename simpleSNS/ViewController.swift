//
//  ViewController.swift
//  simpleSNS
//
//  Created by Eriko Ichinohe on 2017/09/11.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //アクションボタンが押された時発動
    @IBAction func tapAction(_ sender: UIBarButtonItem) {
        
        //P.224
        
        // アクティビティビューを作成(インスタンス化)
        // イニシャライザ（初期化）= インスタンス化したものを宣言した変数に直接代入すること
        // activityItems シェアしたい情報の配列(中身はAny型)
        let controller = UIActivityViewController(activityItems: [dogImageView.image], applicationActivities: nil)
        
        // アクティビティビューを表示
        // モーダル表示（主にAlert,ActionSheet,ActivitiViewに使用されるが、通常サイズの画面をモーダル表示するときも使える）
        present(controller,animated: true,completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

