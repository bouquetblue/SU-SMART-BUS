//
//  Listbus2View.swift
//  su smart bus
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct Listbus2View: View {
    
    let items1 = ["เที่ยวที่ 1","เที่ยวที่ 2","เที่ยวที่ 3","เที่ยวที่ 4","เที่ยวที่ 5","เที่ยวที่ 6","เที่ยวที่ 7","เที่ยวที่ 8","เที่ยวที่ 9","เที่ยวที่ 10","เที่ยวที่ 11","เที่ยวที่ 12","เที่ยวที่ 13","เที่ยวที่ 14","เที่ยวที่ 15","เที่ยวที่ 16","เที่ยวที่ 17","เที่ยวที่ 18","เที่ยวที่ 19","เที่ยวที่ 20","เที่ยวที่ 21","เที่ยวที่ 22","เที่ยวที่ 23","เที่ยวที่ 24","เที่ยวที่ 25","เที่ยวที่ 26","เที่ยวที่ 27"]
    
    let items3 = ["8:00 น.","8:15 น.","8:30 น.","9:00 น.","9:15 น.","9:30 น.","10:00 น.","10:20 น.","10:40 น.","11:00 น.","11:20 น.","11:40 น.","11:50 น.","12:00 น.","12:40 น.","13:00 น.","13:30 น.","14:00 น.","14:30 น.","15:00 น.","15:30 น.","16:00 น.","16:20 น.","16:40 น.","17:00 น.","17:30 น.","18:00 น."]
    
    var body: some View {
        VStack(spacing: -10){
            Text("รอบเวลาเดินรถ")
                .font(Font.custom("FC Friday Medium", size:28))
                .foregroundColor(Color("green_su_dark"))
                .padding()
            
            List {
                HStack {
                    VStack {
                        HStack {
                            Text("เที่ยวที่")
                                .font(Font.custom("FC Friday Medium", size:28))
                                .foregroundColor(Color("green_su_dark"))
                                .padding(.bottom, 1)
                                
                        }
                        
                        ForEach(items1, id: \.self) { item in
                            HStack {
                                Text(item)
                                    .font(Font.custom("FC Friday Medium", size:25))
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.bottom, 1)
                            }
                        }
                    }
                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("เวลาออก")
                                .font(Font.custom("FC Friday Medium", size:24))
                                .foregroundColor(Color("green_su_dark"))
                                .padding(.bottom, 1)
                            
                        }
                        
                        ForEach(items3, id: \.self) { item in
                            HStack {
                                Text(item)
                                    .font(Font.custom("FC Friday Medium", size:25))
                                    .foregroundColor(Color("gray_dark"))
                                    .padding(.bottom, 1)
                                
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal,60)
            }

        }
        
    }
}

struct Listbus2View_Previews: PreviewProvider {
    static var previews: some View {
        Listbus2View()
    }
}
