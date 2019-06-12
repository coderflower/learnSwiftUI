//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 蔡龙君 on 2019/6/11.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.red)
            }
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
