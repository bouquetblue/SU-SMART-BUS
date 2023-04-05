//
//  listbusView.swift
//  su smart bus
//
//  Created by admin on 31/3/2566 BE.
//

import SwiftUI

struct ListbusView: View {
    
    let items1 = ["เที่ยวที่ 1","เที่ยวที่ 2","เที่ยวที่ 3","เที่ยวที่ 4","เที่ยวที่ 5","เที่ยวที่ 6","เที่ยวที่ 7","เที่ยวที่ 8","เที่ยวที่ 9","เที่ยวที่ 10","เที่ยวที่ 11","เที่ยวที่ 12","เที่ยวที่ 13","เที่ยวที่ 14","เที่ยวที่ 15","เที่ยวที่ 16","เที่ยวที่ 17","เที่ยวที่ 18","เที่ยวที่ 19","เที่ยวที่ 20","เที่ยวที่ 21","เที่ยวที่ 22","เที่ยวที่ 23","เที่ยวที่ 24","เที่ยวที่ 25","เที่ยวที่ 26","เที่ยวที่ 27","เที่ยวที่ 28","เที่ยวที่ 29","เที่ยวที่ 30","เที่ยวที่ 31","เที่ยวที่ 32","เที่ยวที่ 33","เที่ยวที่ 34","เที่ยวที่ 35"]
    
    let items2 = ["เที่ยวที่ 36","เที่ยวที่ 37","เที่ยวที่ 38","เที่ยวที่ 39","เที่ยวที่ 40","เที่ยวที่ 41","เที่ยวที่ 42","เที่ยวที่ 43","เที่ยวที่ 44","เที่ยวที่ 45","เที่ยวที่ 46","เที่ยวที่ 47","เที่ยวที่ 48","เที่ยวที่ 49","เที่ยวที่ 50","เที่ยวที่ 51","เที่ยวที่ 52","เที่ยวที่ 53","เที่ยวที่ 54","เที่ยวที่ 55","เที่ยวที่ 56","เที่ยวที่ 57","เที่ยวที่ 58","เที่ยวที่ 59","เที่ยวที่ 60","เที่ยวที่ 61","เที่ยวที่ 62","เที่ยวที่ 63","เที่ยวที่ 64","เที่ยวที่ 65","เที่ยวที่ 66","เที่ยวที่ 67","เที่ยวที่ 68","เที่ยวที่ 69","เที่ยวที่ 70"]
    
    let items3 = ["7:30 น.","7:40 น.","7:50 น.","8:00 น.","8:10 น.","8:10 น.","8:20 น.","8:20 น.","8:20 น.","8:30 น.","8:30 น.","8:40 น.","8:40 น.","8:50 น.","8:50 น.","9:00 น.","9:10 น.","9:20 น.","9:30 น.","9:40 น.","9:50 น.","10:10 น.","10:30 น.","10:50 น.","11:10 น.","11:30 น.","11:40 น.","11:40 น.","11:50 น.","11:50 น.","12:00 น.","12:00 น.","12:10 น.","12:10 น.","12:20 น."]
    
    let items4 = ["12:20 น.","12:30 น.","12:30 น.","12:40 น.","12:40 น.","12:50 น.","13:00 น.","13:10 น.","13:30 น.","14:00 น.","14:30 น.","15:00 น.","15:15 น.","15:30 น.","15:45 น.","16:00 น.","16:00 น.","16:15 น.","16:15 น.","16:30 น.","16:30 น.","16:50 น.","17:00 น.","17:10 น.","17:20 น.","17:30 น.","17:50 น.","18:10 น.","18:20 น.","18:40 น.","19:00 น.","19:15 น.","19:30 น.","19:45 น.","20:00 น."]
    
    var body: some View {
        
        NavigationView{
            VStack {
                Spacer()
                Text("รอบเวลาเดินรถ")
                    .font(Font.custom("FC Friday Medium", size:28))
                    .foregroundColor(Color("green_su_dark"))
                
                List{
                    HStack(spacing: 20) {
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
                                        .font(Font.custom("FC Friday Medium", size:20))
                                        .foregroundColor(Color("green_su_dark"))
                                        .padding(.bottom, 1)
                                }
                            }
                        }
                        
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
                                        .font(Font.custom("FC Friday Medium", size:20))
                                        .foregroundColor(Color("gray_dark"))
                                        .padding(.bottom, 1)
                                    
                                }
                            }
                        }
                        
                        VStack {
                            HStack {
                                Text("เที่ยวที่")
                                    .font(Font.custom("FC Friday Medium", size:28))
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.bottom, 1)
                            }
                            
                            ForEach(items2, id: \.self) { item in
                                HStack {
                                    Text(item)
                                        .font(Font.custom("FC Friday Medium", size:20))
                                        .foregroundColor(Color("green_su_dark"))
                                        .padding(.bottom, 1)
                                }
                            }
                        }
                        
                        VStack {
                            HStack {
                                Text("เวลาออก")
                                    .font(Font.custom("FC Friday Medium", size:24))
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.bottom, 1)
                                
                            }
                            
                            ForEach(items4, id: \.self) { item in
                                HStack {
                                    Text(item)
                                        .font(Font.custom("FC Friday Medium", size:20))
                                        .foregroundColor(Color("gray_dark"))
                                        .padding(.bottom, 1)
                                }
                            }
                        }
                    }
                    
                    .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
//                .scrollContentBackground(.hidden)
            
            }
        }
    }


struct listbusView_Previews: PreviewProvider {
    static var previews: some View {
        ListbusView()
    }
}
