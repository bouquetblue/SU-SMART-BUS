//
//  ContentView.swift
//  su smart bus
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI
import Foundation

class State1: ObservableObject {
    @Published var selectedOption = ""
    @Published var selected = ""
    
    
    @State var currentTime = Date()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"
        return formatter
        
//        minsTimer = scheduledTime()
    }()
    
    func scheduledTime() -> Date {
        let calender = Calendar.current
        let scheduledTime = calender.date(byAdding: .minute, value: 10, to: Date())!
        return scheduledTime
    }
}

struct ContentView: View {
    
//    let carTableOne = ["7:30", "7:40", "7:50", "8:00"]
//    let dateFormatter = DateFormatter()
//    dateFormatter.locale = Locale.current;
////    dateFormatter.locale = Locale.current
//    dateFormatter.dateFormat = "h.mm a"
//
//    if let localTime = dateFormatter.date(from: dateFormatter.string(from: Date())) {
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.hour, .minute], from: localTime)
//
//        for i in 0..<carTableOne.count {
//            if let tableTime = dateFormatter.date(from: carTableOne[i]) {
//                if calendar.compare(localTime, to: tableTime, toGranularity: .minute) == .orderedAscending {
//                    let timeDifference = calendar.dateComponents([.minute], from: localTime, to: tableTime)
//                    print("\(timeDifference.minute!) minutes before \(carTableOne[i])")
//                    break
//                }
//            }
//        }
//    }
    
    @EnvironmentObject var state: State1

    
    var options = ["(1) อาคารกิจกรรมและนันทนาการ", "(2) คณะสัตวศาสตร์และเทคโนโลยีการเกษตร", "(3) คณะเทคโนโลยีสารสนเทศและการสื่อสาร", "(4) อาคารโบราณคดี", "(5) คณะวิทยบริการ", "(6) อาคารเรียนรวม 1", "(7) อาคารบริหาร", "(8) อาคารเรียนรวม 2", "(9) หอพัก 2", "(10) หอพัก 5"]
    
    @State var isActive: Bool = false
    @State var selectedOption = ""
    
    @State private var timeRemaining = 100

    let date: Date
    var dateFormatter: DateFormatter
    let now = Date.now
    let soon = Date.now.addingTimeInterval(100)
    let later = Date.now.addingTimeInterval(200)
    
    init() {
        date = Date()
        dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
    }
    
    func formatter() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "th_TH")
        formatter.setLocalizedDateFormatFromTemplate("dd MMMM YYYY")
        return formatter.string(from: now)
    }
    
    var body: some View {
        
        NavigationView{
            
            VStack {
//                Text("\(state.scheduledTime(), formatter: state.dateFormatter)")
                VStack {
                    Text(formatter())
                        .font(Font.custom("FC Friday Medium", size: 38))
                        .foregroundColor(Color("green_su_dark"))
//                    Spacer()
//                        .foregroundColor(Color("green_su_dark"))
                }
                .padding(.horizontal, 30)
                
                Rectangle()
                    .frame(width: 350, height:150)
                    .cornerRadius(20)
                    .font(.title)
                    .foregroundColor(Color("green_su"))
                    .overlay(
                        HStack {
                            VStack {
                                Text("รอบถัดไป")
                                    .font(Font.custom("FC Friday Medium", size:28))
                                    .foregroundColor(Color("green_su_dark"))
                                
                                Text("\(state.currentTime, formatter: state.dateFormatter)")
                                    .font(Font.custom("FC Friday Medium", size:55))
                                    .foregroundColor(Color("green_su_dark"))
                                
                            }
                            Image(systemName: "bus")
                                .foregroundColor(Color("green_su_dark"))
                                .font(.system(size: 70))
                        }
                    )
                
                VStack {
                    HStack {
//                        Circle()
//                            .frame(width: 20, height: 20)
//                            .foregroundColor(Color("gray_su"))
                        VStack {
                            Text("จุดรอรับที่ท่านอยู่ :")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                        }
                        Picker("จุดเริ่มต้น", selection: $state.selectedOption) {
                            ForEach(options, id: \.self) {
                                Text($0)
                                
                            }
                        }.pickerStyle(.automatic)
                        
                        
                    }
                    .frame(alignment: .center)
                    
                }
                .padding(.top, 20)
                
                NavigationLink(destination: BusStatusView(), label: {
                    Text("คำนวณเวลาถึง")
                        .font(Font.custom("FC Friday Medium", size:28))
                        .foregroundColor(Color(.white))
                        .padding()
                        .background(Color("green_su_dark"))
                        .cornerRadius(15)
                })
                .padding(.top, 20)
            
                
                HStack{
                    Text("แผนที่จุดรอรับรถ")
                        .font(Font.custom("FC Friday Medium", size:26))
                        .foregroundColor(Color("green_su_dark"))
                        .padding(.horizontal,30)
                    Spacer()
                }
                .padding(.top, 20)
                        
                    VStack {
                    
                    Image("map")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal ,30)

                }
//                .onTapGesture {
//
//                }
//                NavigationLink(destination: ListbusView(), label: {
//
//                })
//                List {
//                    Text("รอบเวลาเดินรถ")
//                        .font(Font.custom("FC Friday Medium", size:28))
//                        .foregroundColor(Color("green_su_dark"))
                
//                 ForEach(items, id: \.self) { item in
//                     NavigationLink(destination: ListbusView(), label: {
//                        HStack {
//                                Text(item)
//                                    .font(Font.custom("FC Friday Medium", size:25))
//                                    .foregroundColor(Color("gray_dark"))
//                                Spacer ()
//
//                            }
//                        })
//                    }
//
//                .scrollContentBackground(.hidden)
                
                
            }
        }
    }
}
                    
//                List {
//                    Text("รอบเวลาเดินรถ")
//                        .font(Font.custom("FC Friday Medium", size:28))
//                        .foregroundColor(Color("green_su_dark"))
//
//                    Text("วันจันทร์")
//                        .font(Font.custom("FC Friday Medium", size:20))
//                        Image(systemName: "arrow.right")
//
//                    Text("วันอังคาร")
//                        .font(Font.custom("FC Friday Medium", size:20))
//
//                    Text("วันพุธ")
//                        .font(Font.custom("FC Friday Medium", size:20))
//
//                    Text("วันพฤหัสบดี")
//                        .font(Font.custom("FC Friday Medium", size:20))
//
//                    Text("วันศุกร์")
//                        .font(Font.custom("FC Friday Medium", size:20))
//
//                    Text("วันเสาร์")
//                        .font(Font.custom("FC Friday Medium", size:20))
//
//                    Text("วันอาทิตย์")
//                        .font(Font.custom("FC Friday Medium", size:20))
//                }
//                .scrollContentBackground(.hidden)
              
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
                    .environmentObject(State1())
            }
        }
