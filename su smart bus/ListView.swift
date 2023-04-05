//
//  ListView.swift
//  su smart bus
//
//  Created by admin on 30/3/2566 BE.
//

import SwiftUI
import Foundation

struct ListView: View {
    @EnvironmentObject var state: State1
    
    var options = ["(1) อาคารกิจกรรมและนันทนาการ", "(2) คณะสัตวศาสตร์และเทคโนโลยีการเกษตร", "(3) คณะเทคโนโลยีสารสนเทศและการสื่อสาร", "(4) อาคารโบราณคดี", "(5) คณะวิทยบริการ", "(6) อาคารเรียนรวม 1", "(7) อาคารบริหาร", "(8) อาคารเรียนรวม 2", "(9) หอพัก 2", "(10) หอพัก 5"]
    @State var isActive: Bool = false

    @State private var timeRemaining = 100

//    let date: Date
//    var dateFormatter: DateFormatter
//    let now = Date.now
//    let soon = Date.now.addingTimeInterval(100)
//    let later = Date.now.addingTimeInterval(200)

//    let range = now...later

//    init() {
//        date = Date()
//        dateFormatter = DateFormatter()
//        dateFormatter.timeStyle = .short
//    }
//
//    @State var ColorActive = 1
    
    var body: some View {
        NavigationView{
            VStack {
//                Text()
//                Text("\(soon)")
//                Text("\(now)")
                Text("คำนวณเวลาถึง")
                    .font(Font.custom("FC Friday Medium", size: 30))
                    .foregroundColor(Color("green_su_dark"))
                        
                VStack {
                    HStack {
//                        Circle()
//                            .frame(width: 20, height: 20)
//                            .foregroundColor(Color("gray_su"))
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
                }
//
                VStack {
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
//                }
//
                Rectangle()
                    .frame(width: 330, height: 2)
                    .foregroundColor(Color("green_su_dark"))

                List {
                    VStack (spacing: 0) {
                        HStack {
                            Text("ป้ายที่ 1")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            ZStack {
                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }
                            
//                            ZStack {
//                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                }
////                                if (state.dateFormatter == state.scheduledTime(), formatter: state.dateFormatter) {
////                                    Circle()
////                                        .frame(width: 22, height: 22)
////                                        .foregroundColor(.blue)
////                                } else {
////                                    Circle()
////                                        .frame(width: 22, height: 22)
////                                        .foregroundColor(.black)
////                                }
//                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 2")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            
                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }

//                            ZStack {
//                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                }
//                                if (now >= soon) {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.blue)
//                                } else {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.black)
//                                }
//                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 3")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            
                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }

//                            ZStack {
//                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                }
//                                if (now >= soon) {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.blue)
//                                } else {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.black)
//                                }
//                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 4")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            
                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }

//                            ZStack {
//                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                }
//                                if (now >= soon) {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.blue)
//                                } else {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.black)
//                                }
//                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 5")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()

                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 6")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            
                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }

//                            ZStack {
//                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                }
//                                if (now >= soon) {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.blue)
//                                } else {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.black)
//                                }
//                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 7")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            
                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }
//                            ZStack {
//                                VStack {
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
//                                }
//                                if (ColorActive == 7) {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.blue)
//                                } else {
//                                    Circle()
//                                        .frame(width: 22, height: 22)
//                                        .foregroundColor(.black)
//                                }
//                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 8")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()

                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 9")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()
                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                        }
                        .listRowSeparator(.hidden)
                        
                        HStack {
                            Text("ป้ายที่ 10")
                                .font(Font.custom("FC Friday Medium", size:25))
                                .foregroundColor(Color("green_su_dark"))
                            Spacer()

                            ZStack {
                                VStack {
                                    Rectangle()
                                        .frame(width: 4, height: 30 )
//                                    Rectangle()
//                                        .frame(width: 4, height: 30 )
                                }
                                Circle()
                                    .frame(width: 22, height: 22)
                            }
                            Rectangle()
                                .frame(width: 230, height: 30)
                                .cornerRadius(5)
                                .foregroundColor(Color("green_su"))
                                .overlay(
                            VStack {
                                Text("10:05")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("green_su_dark"))
                                    .padding(.leading, 170)
                            }
                            )
                            }
                        .listRowSeparator(.hidden)
                    }
                    
                    }
                .scrollContentBackground(.hidden)
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(State1())
    }
}
