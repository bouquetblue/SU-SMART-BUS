//
//  BusStatusView.swift
//  su smart bus
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct BusStatusView: View {
    
    @EnvironmentObject var state: State1
    
    var options = ["(1) อาคารกิจกรรมและนันทนาการ", "(2) คณะสัตวศาสตร์และเทคโนโลยีการเกษตร", "(3) คณะเทคโนโลยีสารสนเทศและการสื่อสาร", "(4) อาคารโบราณคดี", "(5) คณะวิทยบริการ", "(6) อาคารเรียนรวม 1", "(7) อาคารบริหาร", "(8) อาคารเรียนรวม 2", "(9) หอพัก 2", "(10) หอพัก 5"]
    @State var isActive: Bool = false

    @State private var timeRemaining = 100
    
    var body: some View {
        VStack {
            Text("คำนวณเวลาถึง")
                .font(Font.custom("FC Friday Medium", size: 30))
                .foregroundColor(Color("green_su_dark"))
            
            HStack {
//                Circle()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(Color("gray_su"))
                VStack {
                    Text("จุดรอรับที่ท่านอยู่ :")
                        .font(Font.custom("FC Friday Medium", size:28))
                        .foregroundColor(Color("green_su_dark"))
                }
                Picker("จุดเริ่มต้น", selection: $state.selectedOption) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.automatic)
            }
            
            HStack {
                Image(systemName: "bus")
                    .font(.system(size: 40))
                    .foregroundColor(Color("green_su_dark"))
                Text("ป้ายต่อไป")
                    .font(Font.custom("FC Friday Medium", size:30))
                    .foregroundColor(Color("green_su_dark"))
                Spacer()
                
                Text("เวลาถึง")
                    .font(Font.custom("FC Friday Medium", size:25))
                    .foregroundColor(Color("green_su_dark"))
                    .padding(.leading, 80)
                Spacer()
                
                
            }
            .padding(.horizontal, 30)
            
            
            
            Rectangle()
                .frame(width: 330, height: 2)
                .foregroundColor(Color("green_su_dark"))
            
            ScrollView {
                
                ForEach(1..<11) { index in
                    VStack {
                        HStack(spacing: 15) {
                            Circle()
                                .frame(width: 22, height: 22)
                            
                            
                            
                            Text("ป้ายที่ \(index)")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                                    VStack {
                                        Text("10:05")
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("green_su_dark"))
                                    })
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct BusStatusView_Previews: PreviewProvider {
    static var previews: some View {
        BusStatusView()
            .environmentObject(State1())
    }
}
