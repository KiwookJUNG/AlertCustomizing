//
//  ImageViewController.swift
//  AlertCustomizing
//
//  Created by 정기욱 on 16/02/2019.
//  Copyright © 2019 Kiwook. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    override func viewDidLoad() {
        // 1. 이미지와 이미지 뷰 객체를 생성
        
        let icon = UIImage(named: "rating5") // UIImage는 실제 이미지를 저장하는 객체
        let iconV = UIImageView(image: icon) // UIImageView는 이미지 객체를 이용하여 화면에 표시하는 뷰의 일종
        
        // 2. 이미지 뷰의 영역과 위치를 선정
        iconV.frame = CGRect(x: 0, y: 0, width: (icon?.size.width)!, height: (icon?.size.height)!)
        
        // 3. 루트 뷰에 이미지 뷰를 추가 ( ImageViewController라는 루트뷰에 image라는 서브뷰 추가 )
        // 즉, 이미지 뷰는 서브뷰
        self.view.addSubview(iconV)
        
        // 4. 외부에서 참조할 뷰 컨트롤러 사이즈를 이미지 크기와 동일하게 설정\
        // 현재 서브뷰 이미지를 담고있는 루트뷰 ImageViewController 가 외부에서 참조 될 때
        // 사이즈를 지정해줌. 이미지의 너비가 알림창을 모두 채울만큼 넓지 않은 경우 알림창에서 한쪽으로 치우친
        // 모습으로 표현되기도 하는데 이를 피하기 위한 속성처리
        // 높이값 +10 은 이미지 아래에 여백을 주기위한 것
        self.preferredContentSize = CGSize(width: (icon?.size.width)!, height: (icon?.size.height)!+10)
    }
}
