//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Meenakshi on 2022-01-14.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavouriteOnly = false
    @EnvironmentObject var modelData: ModelData
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouriteOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouriteOnly) {
                    Text("Favorites only")
                }
            ForEach (filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                   LandmarkRow(landmark: landmark)
            }
            }
        }
        
        .navigationTitle("Landmarks")
     }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
