//
//  InfobusView.swift
//  su smart bus
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

let items = ["วันจันทร์ - ศุกร์"]
let items1 = ["วันเสาร์ - อาทิตย์"]
let cardImage = UIImage(named: "card")!
                

struct InfobusView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                Text("ข้อมูลเพิ่มเติม")
                    .font(Font.custom("FC Friday Medium", size:30))
                    .foregroundColor(Color("green_su_dark"))
                
                ForEach(items, id: \.self) { item in
                    NavigationLink(destination: ListbusView()) {
                        HStack {
                            Text(item)
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("gray_dark"))
                            Spacer ()
                        }
                    }
                }
                ForEach(items1, id: \.self) { item in
                    NavigationLink(destination: Listbus2View()) {
                        HStack {
                            Text(item)
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("gray_dark"))
                            Spacer ()
                        }
                    }
                }
                VStack{
                    Text("จุดรอรถราง")
                        .font(Font.custom("FC Friday Medium", size:30))
                        .foregroundColor(Color("green_su_dark"))
//                        .padding(.leading,20)
                }
                .listRowSeparator(.hidden)
                .padding(.top, 30)
                
                HStack(spacing: 10) {
                    VStack{
                        Image("bus1")
                            .resizable()
                            .frame(width: 170, height: 150)
                        Text("1. อาคารนันทนาการ")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
                    }
                    
                    VStack {
                        Image("bus2")
                            .resizable()
                            .frame(width: 170, height: 150)
                        
                        Text("2. คณะสัตวศาสตร์")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
    
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            }
                
                HStack(spacing: 10) {
                    VStack{
                        Image("bus3")
                            .resizable()
                            .frame(width: 170, height: 150)
                        Text("3. คณะ ict")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
                    }
                    
                    VStack {
                        Image("bus4")
                            .resizable()
                            .frame(width: 170, height: 150)
                        
                        Text("4. อาคารโบราณคดี")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
    
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            }
                
                HStack(spacing: 10) {
                    VStack{
                        Image("bus5")
                            .resizable()
                            .frame(width: 170, height: 150)
                        Text("5. คณะวิทยบริการ")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
                    }
                    
                    VStack {
                        Image("bus6")
                            .resizable()
                            .frame(width: 170, height: 150)
                        
                        Text("6. อาคารเรียนรวม 1")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
    
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            }
                
                HStack(spacing: 10) {
                    VStack{
                        Image("bus7")
                            .resizable()
                            .frame(width: 170, height: 150)
                        Text("7. อาคารบริหาร")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
                    }
                    
                    VStack {
                        Image("bus8")
                            .resizable()
                            .frame(width: 170, height: 150)
                        
                        Text("8. อาคารเรียนรวม 2")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
    
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            }
                
                HStack(spacing: 10) {
                    VStack{
                        Image("bus9")
                            .resizable()
                            .frame(width: 170, height: 150)
                        Text("9. หอพัก 2")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
                    }
                    
                    VStack {
                        Image("bus10")
                            .resizable()
                            .frame(width: 170, height: 150)
                        
                        Text("10. หอพัก 5")
                            .font(Font.custom("FC Friday Medium", size:20))
                            .foregroundColor(Color("gray_dark"))
    
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            }
//                .padding(.vertical,70)
            }
            .scrollContentBackground(.hidden)
        }
        
    }
}
           
            

struct InfobusView_Previews: PreviewProvider {
    static var previews: some View {
        InfobusView()
    }
}
