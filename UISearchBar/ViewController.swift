//
//  ViewController.swift
//  UISearchBar
//
//  Created by mizoz on 2021/07/10.
//

import UIKit

// ViewControllerに UISearchBarDelegateプロトコルを適用
class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchField: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchField.delegate = self
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // キーボードを閉じる
        view.endEditing(true)
        // 入力された値がnilでなければif文のブロック内の処理を実行
        if let word = searchBar.text {
            // デバックエリアに出力
            print(word)
        }
    }


}

