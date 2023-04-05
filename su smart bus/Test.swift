//
//  Test.swift
//  su smart bus
//
//  Created by admin on 25/3/2566 BE.
//

import SwiftUI

struct DetailView: View {
    var selectedChat: Chat?

    @State var progressBarValue:CGFloat = 0

    var body: some View {
        Group {
            if selectedChat != nil {
                VStack {
                    if progressBarValue < 1 {
                        CircularProgressBar(value: $progressBarValue)
                    }
                    else {
                        //Text("WELL DONE")
                        Text("\(UserData().getChat(withID: selectedChat!.id)!.allText.first!.text)")
                    }
                }
            } else {
                VStack {
                    CircularProgressBar(value: $progressBarValue)
                    Text("Detail view content goes here")
                }
            }
        }.navigationBarTitle(Text("\(selectedChat?.name ?? "")"))
        .onAppear {

            if let chat = self.selectedChat {
                if chat.allText.count == 0 {
                    let exData = ExtractData()
                    if let path = chat.getUnzipPath()?.relativePath {
                        DispatchQueue.main.async {//with or without the behavior is the same
                            exData.manageExtractedZip(unzipPath: path) { progress in
                                if progress >= 1 {
                                    var newChat = chat
                                    newChat.allText = exData.allTexts
                                    let userD = UserData()
                                    userD.overrideChat(with: newChat)
                                    print(exData.allTexts)
                                }
                                self.progressBarValue = CGFloat(progress)
                                print("progressBarValue: \(self.progressBarValue)") //This is printing well
                            }
                        }
                    }

                }
                else {
                    self.progressBarValue = 1
                }
            }
            /* This is working
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                self.progressBarValue += 0.1
                print(self.progressBarValue)
                if (self.progressBarValue >= 1) {
                    timer.invalidate()
                }
            }*/
        }
    }

}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedChat: UserData().chatData.first!)
