//
//  LandmarkList.swift
//  Landmark
//
//  Created by 강희창 on 5/10/24.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    var body: some View {
        NavigationSplitView {
            
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Favorite Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                        
                    }
                }
            }
            .navigationTitle("Land Marks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
