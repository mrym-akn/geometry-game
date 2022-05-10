//
//  ContentView.swift
//  GeometryGame
//
//  Created by cmStudent on 2022/05/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //背景
            BackView()
            //画面全体のサイズを表示
            HintView()
            //ゲーム要素
            StartButtonView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
