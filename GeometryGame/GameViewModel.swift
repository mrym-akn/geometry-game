//
//  GameViewModel.swift
//  GeometryGame
//
//  Created by cmStudent on 2022/05/10.
//

import Foundation
class GameViewModel: ObservableObject{
    @Published var minX = 0
    @Published var minY = 0
    @Published var maxX = 0
    @Published var maxY = 0
    //画面のサイズを取得
    @Published var numberX = 0
    @Published var numberY = 0
    //ボタンの位置情報
    @Published var buttonTitle = "ゲームスタート"
    //スタートボタン
    @Published var gameClear = "スタートボタンで\nゲームスタート！"
    @Published var searchButton = false
    //探すボタンの表示非表示切り替え
    
    //スタート時の処理
    func GameState() {
        numberX = Int.random(in: minX...maxX)
        numberY = Int.random(in: minY...maxY)
        //画面サイズ内でランダムにX・Y軸の数値決定
        searchButton = true
        //探すボタンを表示
        buttonTitle = "再挑戦　"
        //スタートボタンをリスタートボタンに
    }
    
    //ボタンを見つけた時の処理
    func AnswerRight(){
        searchButton = false
        gameClear = "ゲームクリア！"
        //ボタンを非表示に
    }
}
