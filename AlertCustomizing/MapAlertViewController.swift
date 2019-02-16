//
//  MapAlertViewController.swift
//  AlertCustomizing
//
//  Created by 정기욱 on 16/02/2019.
//  Copyright © 2019 Kiwook. All rights reserved.
//

import UIKit
import MapKit // 경고창에 넣을 맵을 위한 맵킷 프레임워크


class MapAlertViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 버튼 생성 ( 클릭을 하면 알림창이 뜨는 버튼 ) ( 버튼에 연결된 액션메소드가 필요하므로 정의해줘야함 )
        let alertBtn = UIButton(type: .system)
        
        // 버튼 속성 설정
        alertBtn.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        alertBtn.center.x = self.view.frame.width / 2
        alertBtn.setTitle("Map Alert", for: .normal)
        alertBtn.addTarget(self, action: #selector(mapAlert(_:)), for: .touchUpInside)
        
        
        
        self.view.addSubview(alertBtn)
    }
    
    // 버튼을 눌렀을 때 실행될 액션 메소드
    @objc func mapAlert( _ sender: UIButton) {
        
        // 경고창 객체를 생성하고, OK 및 Cancel 버튼을 추가한다.
        let alert = UIAlertController(title: nil, message: "여기가 맞습니까?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        
        
        // 콘텐츠 뷰 영역에 들어갈 뷰 컨트롤러를 생성하고, 알림창에 등록한다.
        let contentVC = MapKitViewController()
        
        
        // 뷰 컨트롤러를 알림창의 콘텐츠 뷰 컨트롤러 속성에 등록한다.
        alert.setValue(contentVC, forKeyPath : "contentViewController")
        
        
        
        self.present(alert, animated: false)
        
        
    }
    
    
}
