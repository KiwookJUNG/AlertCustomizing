//
//  MapKitViewController.swift
//  AlertCustomizing
//
//  Created by 정기욱 on 16/02/2019.
//  Copyright © 2019 Kiwook. All rights reserved.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {
    
    override func viewDidLoad() {
        // 뷰 컨트롤러에 맵킷 뷰를 추가한다.
        let mapkitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view = mapkitView // mapkitView 자체를 루트뷰로 지정하는 구문
        self.preferredContentSize.height = 200 // 콘텐츠 뷰가 표시될 사이즈
        // 즉 맵의 세로 높이를 지정해준다.
        
        // 이 때문에 mapkitView의 좌표값과 너비 높이가 필요없다
        // 좌표값과 너비와 높이는 루트뷰가 아니라 서브뷰에 필요한 구문이다.
        // 왜냐하면 루트뷰는 항상 화면 전ㅊ체를 채우는 방식으로 크기가 자동 지정되기 때문이다.
        
        // 1. 위치 정보를 설정한다. ( 위도 경도를 사용 )
        let pos = CLLocationCoordinate2D(latitude: 37.514322, longitude: 126.894623)
        
        // 2. 지도에서 보여줄 넓이. 일종의 축척. 숫자가 작을수록 좁은 범위를 확대시켜 보여준다.
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        
        // 3. 지도 영역을 정의
        let region = MKCoordinateRegion(center: pos, span:span)
        
        // 4. 지도 뷰에 표시
        mapkitView.region = region
        mapkitView.regionThatFits(region)
        
        // 5. 위치를 핀으로 표시
        let point = MKPointAnnotation()
        point.coordinate = pos
        mapkitView.addAnnotation(point)
        
    }
}
