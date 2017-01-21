//
//  ViewController.swift
//  AVAudioApp
//
//  Created by yuki yamamoto on H29/01/08.
//  Copyright © 平成29年 yuki yamamoto. All rights reserved.
//

import UIKit
import AVFoundation
import MessageUI

var player:AVAudioPlayer!
var player2:AVAudioPlayer!

// ViewController子クラスの親クラスはUIViewController。（ViewはUIViewを継承している）
class ViewController: UIViewController, MFMailComposeViewControllerDelegate, AVAudioPlayerDelegate{
    

    
    //override ＝ 親クラスで宣言されているプロパティやメソッドを上書きする
    //viewDidLoadメソッドはViewControllerの親クラスであるUIViewControllerにも定義されており、ここではそれを上書きしている。
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    

//FavoriteButton
    
    @IBOutlet weak var BoxOne: UIButton!
    
    var BoxOn  = UIImage(named: "CheckBox")
    var BoxOff = UIImage(named: "UnCheckBox")
    
    var IsBoxClicked: Bool = false

    @IBAction func RedBox(_ sender: AnyObject) {
        IsBoxClicked = !IsBoxClicked
        BoxOne.setImage(IsBoxClicked ? BoxOn : BoxOff, for: UIControlState.normal)
    }
    
    @IBOutlet weak var BoxOne2: UIButton!

    @IBAction func RedBox2(_ sender: Any) {
        IsBoxClicked = !IsBoxClicked
        BoxOne.setImage(IsBoxClicked ? BoxOn : BoxOff, for: UIControlState.normal)
    }
    
    
    
    
    // インスタンス＝クラスを使用して生成する実際のUI部品。
    //クラスからインスタンスを作成する var 変数名 = クラス名()
    // 再生する audio ファイルのパスを取得
    let url1 = Bundle.main.bundleURL.appendingPathComponent("もう三日.mp3")
    let url2 = Bundle.main.bundleURL.appendingPathComponent("びしばし教える.mp3")
    
    let url3 = Bundle.main.bundleURL.appendingPathComponent("なんか音.mp3")
    let url4 = Bundle.main.bundleURL.appendingPathComponent("気のせいだよ.mp3")
    let url5 = Bundle.main.bundleURL.appendingPathComponent("Dra.mp3")
    
    let url6 = Bundle.main.bundleURL.appendingPathComponent("なんか音.mp3")
    let url7 = Bundle.main.bundleURL.appendingPathComponent("気のせいだよ.mp3")
    let url8 = Bundle.main.bundleURL.appendingPathComponent("Dra.mp3")
    
    
    

    
    
    
    //関数（function）とは定義されている複数の命令文を一つにまとめる機能です。
    //関数の宣言 func 関数名(){ 文 }
    
    func 関数名(音声: URL) {
        do {
            try player = AVAudioPlayer(contentsOf:音声)
            player.play()
            
        } catch {
            print(error)
        }
    }
    
    func 関数名2(音声: URL, 音声2: URL) {
        do {
            try player = AVAudioPlayer(contentsOf:音声)
            try player2 = AVAudioPlayer(contentsOf: 音声2)
            //音楽をバッファに読み込んでおく
            player.prepareToPlay()
            
            //デリゲート先に自分を設定する。
            player.delegate = self
            
        } catch {
            print(error)
        }
    }
    

        

    
    
    
    
    //IBOutletはButtonがメソッドとしてストーリーボードと接続できることを表しています。hwん数labelの場合は（プロパティ）
    
    //再生ボタン1押下時の呼び出しメソッド
    @IBAction func pushButton1(sender: UIButton) {
        関数名(音声: url1)
    }
    
    //再生ボタン2押下時の呼び出しメソッド
    @IBAction func pushButton2(sender: UIButton) {
        関数名(音声: url2)
    }
    
    //再生ボタン3押下時の呼び出しメソッド
    
    @IBAction func pushButton3(sender: UIButton) {
        関数名2(音声: url1, 音声2: url2)
        player.play()
    }


    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        player2.play()
    }


    
    
    
    //再生ボタン3押下時の呼び出しメソッド
    @IBAction func pushButton4(sender: UIButton) {
        関数名(音声: url3)
    }
    
    //再生ボタン4押下時の呼び出しメソッド
    @IBAction func pushButton5(sender: UIButton) {
        関数名(音声: url4)
    }
    
    //再生ボタン5押下時の呼び出しメソッド
    @IBAction func pushButton6(sender: UIButton) {
        関数名(音声: url5)
    }
    
    
    
    //再生ボタン6押下時の呼び出しメソッド
    @IBAction func pushButton7(sender: UIButton) {
        関数名(音声: url6)
    }
    
    //再生ボタン7押下時の呼び出しメソッド
    @IBAction func pushButton8(sender: UIButton) {
        関数名(音声: url7)
    }
    
    //再生ボタン8押下時の呼び出しメソッド
    @IBAction func pushButton9(sender: UIButton) {
        関数名(音声: url8)
    }
 
    
    
    
    
    @IBAction func itemback(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func sendmail(_ sender: Any) {
        let mailCompose = MFMailComposeViewController()
        
        mailCompose.mailComposeDelegate = self
        
        mailCompose.setToRecipients(["uliktodrinksodowe@gmail.com"])
        
        mailCompose.setSubject("フィードバック")
        
        mailCompose.setMessageBody("Nakazato Shohei ?", isHTML: false)
        
        
        
        if MFMailComposeViewController.canSendMail()
            
        {
            
            self.present(mailCompose, animated: true, completion: nil)
            
        }
            
        else{
            
            print("ちっす...!")
            
        }
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true, completion: nil)
        
    }
    
    

    }
    
    
    

