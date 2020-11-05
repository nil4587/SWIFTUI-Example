//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Nilesh Prajapati (ZA) on 2020/06/23.
//  Copyright © 2020 Nilesh Prajapati (ZA). All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    private(set) var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y: -100.0)
                .padding(.bottom, -100.0)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
