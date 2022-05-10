//
//  ButtonView.swift
//  GeometryGame
//
//  Created by cmStudent on 2022/05/10.
//
/*元々はスタートボタンのみのviewでしたが
探すボタン側に位置情報が共有できなかったため、
ボタン全般のコードをこのviewにまとめました。*/

import SwiftUI

struct StartButtonView: View {
    @ObservedObject var gameViewModel = GameViewModel()
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                VStack{
                    Spacer()
                    Button("\(gameViewModel.buttonTitle)") {
                        gameViewModel.minX = Int(geo.frame(in: .local).minX)
                        gameViewModel.minY = Int(geo.frame(in: .local).minY)
                        gameViewModel.maxX = Int(geo.frame(in: .local).maxX)
                        gameViewModel.maxY = Int(geo.frame(in: .local).maxY)
                        //localで画面のサイズを取得
                        gameViewModel.GameState()
                        //ゲーム開始
                    }
                    .frame(width: 150, height: 40)
                    .background(Color("StatusBar"))
                    .cornerRadius(100)
                    .foregroundColor(.white)
                    .font(.title3)
                    
                    
                    
                    Text("X:\(gameViewModel.numberX) Y:\(gameViewModel.numberY)")
                        .font(.title2)
                    //ボタンの位置ヒント
                }
                if(gameViewModel.searchButton == true){
                    Button("●") {
                        gameViewModel.AnswerRight()
                    }
                    .font(.largeTitle)
                    .foregroundColor(Color("ButtonColor"))
                    .position(x: CGFloat(gameViewModel.numberX),y:CGFloat(gameViewModel.numberY))
                    .opacity(0.2)
                    //ボタンの位置を指定
                } else {
                    Text("\(gameViewModel.gameClear)")
                        .fontWeight(.medium)
                        .font(.largeTitle)
                    //メッセージ
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            //要素を中央に揃える
        }
    }
}


struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
