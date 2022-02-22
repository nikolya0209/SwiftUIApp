//
//  ChannelView.swift
//  SwiftUIApp
//
//  Created by MacBookPro on 21.02.2022.
//

import SwiftUI

struct ChannelView: View {
    @EnvironmentObject var channelData: ChannelData
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("Channel Name", text: $channelData.chanelName)
                Divider()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Dismiss this VC")
                })
                Spacer()
            }.padding()
            .navigationBarTitle("\(channelData.chanelName)")
        }
    }
}

struct ChanelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
