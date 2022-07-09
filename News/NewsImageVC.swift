//
//  NewsImageVC.swift
//  News
//
//  Created by Shokhzod on 09/07/22.
//

import UIKit
import SnapKit

class NewsImageVC: UIViewController {
    
    var imageView: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        let tap = UITapGestureRecognizer(target: self, action: #selector(dissMiss))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        view.addSubview(imageView)
        
        configImage()
    }
    
    private func configImage() {
        imageView.contentMode = .scaleAspectFit
        
        imageView.snp.makeConstraints { make in
//            make.height.equalTo(210)
            make.horizontalEdges.equalToSuperview()
            make.center.equalToSuperview()
        }
        
    }
    
    @objc
    private func dissMiss() {
        dismiss(animated: true)
    }

}
