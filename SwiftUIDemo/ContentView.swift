//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Nilesh Prajapati (ZA) on 2020/06/23.
//  Copyright © 2020 Nilesh Prajapati (ZA). All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage()
                .offset(y: -100.0)
                .padding(.bottom, -100.0)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("park’s state")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
