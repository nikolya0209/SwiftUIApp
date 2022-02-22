//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by MacBookPro on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showVideoView = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                GeometryReader { geometry in
                    HStack(spacing: 20) {
                        NavigationLink(
                            destination: ChanelView(),
                            label: {
                                Text("Edit chanal")
                            }).frame(width: abs(geometry.size.width / 2 - 10), height: 50).accentColor(Color.init(#colorLiteral(red: 1, green: 0.4786082506, blue: 0.4582144618, alpha: 1))).background(Color.init(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))).cornerRadius(10)
                        Button(action: {
                            self.showVideoView.toggle()
                        }, label: {
                            Text("Edit content")
                        }).frame(width: abs(geometry.size.width / 2 - 10), height: 50).accentColor(Color.init(#colorLiteral(red: 1, green: 0.4786082506, blue: 0.4582144618, alpha: 1))).background(Color.init(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))).cornerRadius(10).sheet(isPresented: self.$showVideoView, content: {
                            VideoView()
                        })
                    }
                }.padding().frame(height: 50)
                .padding()
                Divider()
                HStack {
                    Image("apple").resizable().frame(width: 120, height: 120)
                    VStack(alignment: .leading) {
                        Text("Hello, world!").font(.title)
                        Text("Hello, world!").font(.subheadline).foregroundColor(.gray)
                    }
                }
                
                
                Spacer()
            }.padding()
            
            
            .navigationBarTitle("Nikolya0209")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
