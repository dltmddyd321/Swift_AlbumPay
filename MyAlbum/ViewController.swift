//
//  ViewController.swift
//  MyAlbum
//
//  Created by 이승용 on 2021/07/09.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0

    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
        //초기 값을 설정
    }

    @IBAction func helloBtn(_ sender: Any) {
    
        let message = "가격은 $\(currentValue) 입니다."
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        //alert 메시지 창 팝업
        
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        //handler에 closure를 삽입하여 OK 클릭 이후 값이 변경
        //메시지 하단의 action 버튼 지정
        
        alert.addAction(action)
        //메시지 창에 action 기능을 추가
        
        present(alert, animated: true, completion: nil)
        //present : 구현한 메시지 창을 팝업
        
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        //1~10000 사이의 숫자를 랜덤으로 반환
        priceLabel.text = "$\(currentValue)"
    }
}

