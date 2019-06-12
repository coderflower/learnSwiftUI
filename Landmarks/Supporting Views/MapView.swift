//
//  MapView.swift
//  Landmarks
//
//  Created by 蔡龙君 on 2019/6/11.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    func makeUIView(context content: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}
#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate:  CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868))
    }
}
#endif
