//
//  Listbus_2_View.swift
//  su smart bus
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct Listbus_2_View: View {
    
    let items1 = ["เที่ยวที่ 1","เที่ยวที่ 2","เที่ยวที่ 3","เที่ยวที่ 4","เที่ยวที่ 5","เที่ยวที่ 6","เที่ยวที่ 7","เที่ยวที่ 8","เที่ยวที่ 9","เที่ยวที่ 10","เที่ยวที่ 11","เที่ยวที่ 12","เที่ยวที่ 13","เที่ยวที่ 14","เที่ยวที่ 15","เที่ยวที่ 16","เที่ยวที่ 17","เที่ยวที่ 18","เที่ยวที่ 19","เที่ยวที่ 20","เที่ยวที่ 21","เที่ยวที่ 22","เที่ยวที่ 23","เที่ยวที่ 24","เที่ยวที่ 25","เที่ยวที่ 26","เที่ยวที่ 27","เที่ยวที่ 28","เที่ยวที่ 29","เที่ยวที่ 30","เที่ยวที่ 31","เที่ยวที่ 32","เที่ยวที่ 33","เที่ยวที่ 34","เที่ยวที่ 35"]
    
    let items2 = ["7:30 น.","7:40 น.","7:50 น.","8:00 น.","8:10 น.","8:10 น.","8:20 น.","8:20 น.","8:20 น.","8:30 น.","8:30 น.","8:40 น.","8:40 น.","8:50 น.","8:50 น.","9:00 น.","9:10 น.","9:20 น.","9:30 น.","9:40 น.","9:50 น.","10:10 น.","10:30 น.","10:50 น.","11:10 น.","11:30 น.","11:40 น.","11:40 น.","11:50 น.","11:50 น.","12:00 น.","12:00 น.","12:10 น.","12:10 น.","12:20 น."]
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: -10){
                Text("รอบเวลาเดินรถ")
                    .font(Font.custom("FC Friday Medium", size:28))
                    .foregroundColor(Color("green_su_dark"))
//                Text("")
//                    .navigationTitle("รอบเวลาออกรถ")
//                   .font(Font.custom("FC Friday Medium", size:28))
//                    .foregroundColor(Color.blue)
//                Text("รอบเวลาออกรถ")
//                    .font(Font.custom("FC Friday Medium", size:30))
//                    .foregroundColor(Color("green_su_dark"))
//                    .padding(.vertical,20)
                
                List{
                    HStack(spacing: 20) {
                        VStack {
                            HStack {
                                Text("เที่ยวที่")
                                    .font(Font.custom("FC Friday Medium", size:28))
                                    .foregroundColor(Color("green_su_dark"))
                                    
                            }
                            
                            ForEach(items1, id: \.self) { item in
                                HStack {
                                    Text(item)
                                        .font(Font.custom("FC Friday Medium", size:20))
                                        .foregroundColor(Color("green_su_dark"))
                                }
                            }
                        }
                        
                        VStack {
                            HStack {
                                Text("เวลาออก")
                                    .font(Font.custom("FC Friday Medium", size:24))
                                    .foregroundColor(Color("green_su_dark"))
                                
                            }
                            
                            ForEach(items, id: \.self) { item in
                                HStack {
                                    Text(item)
                                        .font(Font.custom("FC Friday Medium", size:20))
                                        .foregroundColor(Color("gray_dark"))
                                    
                                }
                            }
                        }
                        
//                        VStack {
//                            HStack {
//                                Text("เที่ยวที่")
//                                    .font(Font.custom("FC Friday Medium", size:28))
//                                    .foregroundColor(Color("green_su_dark"))
//                            }
//                            
//                            ForEach(items2, id: \.self) { item in
//                                HStack {
//                                    Text(item)
//                                        .font(Font.custom("FC Friday Medium", size:20))
//                                        .foregroundColor(Color("green_su_dark"))
//                                }
//                            }
//                        }
                        
//                        VStack {
//                            HStack {
//                                Text("เวลาออก")
//                                    .font(Font.custom("FC Friday Medium", size:24))
//                                    .foregroundColor(Color("green_su_dark"))
//
//                            }
//
//                            ForEach(items4, id: \.self) { item in
//                                HStack {
//                                    Text(item)
//                                        .font(Font.custom("FC Friday Medium", size:20))
//                                        .foregroundColor(Color("gray_dark"))
//                                }
//                            }
//                        }
                    }
                    
                    .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                .scrollContentBackground(.hidden)
            
            }
        }
    }


struct ListbusView_Previews: PreviewProvider {
    static var previews: some View {
        ListbusView()
    }
}

