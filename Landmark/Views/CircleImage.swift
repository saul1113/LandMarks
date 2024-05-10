//
//  CircleImage.swift
//  Landmark
//
//  Created by 강희창 on 5/10/24.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(content: {
                Circle().stroke(.white, lineWidth: 4)
            })
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: landmarks[2].image)
}
