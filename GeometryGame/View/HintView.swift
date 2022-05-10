//
//  HintView.swift
//  GeometryGame
//
//  Created by cmStudent on 2022/05/10.
//
/*制作時のシミュレータはiPhone11ですが、
 他の端末のサイズに合うようにしています。*/

import SwiftUI

struct HintView: View {
    var body: some View {
        GeometryReader{ geo in
            HStack{
                Text("\(Int(geo.frame(in: .local).minX))")
                Spacer()
                Text("\(Int(geo.frame(in: .local).midX))")
                Spacer()
                Text("\(Int(geo.frame(in: .local).maxX))")
            }//横のサイズ表示
            .opacity(0.7)
            .foregroundColor(Color.gray)
            VStack{
                Spacer()
                Text("\(Int(geo.frame(in: .local).midY))")
                Spacer()
                Text("\(Int(geo.frame(in: .local).maxY))")
            }//縦のサイズ表示
            .opacity(0.7)
            .foregroundColor(Color.gray)
            //色が濃すぎると
            //画面がごちゃついて見えるため、色を薄めに
        }
    }
}


struct HintView_Previews: PreviewProvider {
    static var previews: some View {
        HintView()
    }
}
