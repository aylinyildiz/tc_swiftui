//
//  MainScreen.swift
//  ToDosApp
//
//  Created by Aylin on 4.09.2025.
//

import SwiftUI

//      android   ios
//left - start - leading
//right - end - trailing

//maxWidth: .infinity, maxHeight: .infinity (bulunduğu alan kadar yayıl)

//frame öz boyutlandırmaya yarar yayılmayı da yarar

//spacer
//spacing 8 in katları şeklinde olursa daha iyi bir tasarım oluşabilir

struct MainScreen: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 32) {
            Rectangle().fill(.red).frame(width: 100, height: 100).padding()
            Rectangle().fill(.green).frame(width: 75, height: 75).padding(8)
            Spacer().frame(width: 50, height: 50)
            Rectangle().fill(.blue).frame(width: 50, height: 50).padding(.top, 30)
            Rectangle().fill(.yellow).frame(width: 50, height: 50).padding(.horizontal, 8)
            Rectangle().fill(.orange).frame(width: 50, height: 50).padding([.leading, .top],10)
            Rectangle().fill(.black).frame(width:50, height: .infinity)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    MainScreen()
}
