//
//  ListStatusView.swift
//  su smart bus
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct ListStatusView: View {
    var body: some View {
        HStack {
            Text("ป้ายที่ 1")
                .font(Font.custom("FC Friday Medium", size:25))
                .foregroundColor(Color("green_su_dark"))

            Spacer()

            Image(systemName: "circle")
                .frame(width: 22, height: 22)
                .padding()

            Rectangle()
                .frame(width: 230, height: 30)
                .cornerRadius(5)
                .foregroundColor(Color("green_su"))
                .overlay(
                    Text("10:05")
                    .fontWeight(.bold)
                    .foregroundColor(Color("green_su_dark"))
                )
        }
        .padding()
    }
}

struct ListStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ListStatusView()
    }
}
