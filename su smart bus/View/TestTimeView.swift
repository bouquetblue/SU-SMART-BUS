//
//  TestTimeView.swift
//  su smart bus
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct TestTimeView: View {
    let timer = Timer.publish(every: 200, on: .main, in: .common).autoconnect()
    
    @State private var counter = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onReceive(timer) { time in
                if counter == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The Time is now \(time)")
                }
                
                counter += 1
            }
    }
}

struct TestTimeView_Previews: PreviewProvider {
    static var previews: some View {
        TestTimeView()
    }
}
