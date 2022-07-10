//
//  ViewController.swift
//  News
//
//  Created by Shokhzod on 06/07/22.
//

import UIKit
import SnapKit
import KRProgressHUD

class ViewController: UIViewController {
    
    private let viewModel = ViewModel()
    private var model: [ResultItem] = []
    
    private let loader = ImageLoader()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.register(NewsTableCell.self, forCellReuseIdentifier: "postCell")
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        binds()
        viewModel.getNews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.snp.makeConstraints { make in
            make.top.horizontalEdges.bottom.equalToSuperview()
        }
    }
    
    private func binds() {
        viewModel.isLoading.bind { [weak self] isLoadingFromServer in
            DispatchQueue.main.async {
                if isLoadingFromServer {
                    KRProgressHUD.show()
                } else {
                    KRProgressHUD.dismiss()
                }
            }
        }
        
        viewModel.errorStuck.errors.bind { [weak self] errors in
            guard !errors.isEmpty else {
                return
            }
            
            self?.showAlert(with: errors.first!)
        }
        
        viewModel.model.bind { [weak self] model in
            guard
                let self = self,
                !model.isEmpty else {
                return
            }
            
            DispatchQueue.main.async {
                self.model = model
                self.tableView.reloadData()
            }
        }
    }
    
}

//MARK: - UITableViewDelegate & UITableViewDataSource (cell -> delegate)

extension ViewController: UITableViewDelegate, UITableViewDataSource, ImageTappedDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! NewsTableCell
        cell.delegate = self
        
        let model = model[indexPath.row]
        
        switch model.data?.blocks?.first?.data?.items {
        case .itemsClass(_): break
        case .itemsItemArray(let arrModel):
            if
                arrModel.first?.image?.data?.type == .jpg ||
                arrModel.first?.image?.data?.type == .png,
                let urlstrin = arrModel.first?.image?.data?.uuid,
                let url = URL(string: "https://leonardo.osnova.io/" + urlstrin)
            {
                cell.newsImageView.loadImage(at: url)
            }
        case .itemSingle(let model):
            if
                model.image?.data?.type == .jpg ||
                model.image?.data?.type == .png,
                let urlstrin = model.image?.data?.uuid,
                let url = URL(string: "https://leonardo.osnova.io/" + urlstrin)
            {
                cell.newsImageView.loadImage(at: url)
            }
        case .none: break
        case .some(.string(_)): break
        }
        
        cell.configuration(by: model)
        
        if indexPath.row == self.model.count - 1 {
            viewModel.getNews()
        }
        
        return cell
    }
    
    func imageTapped(image: UIImage, id: String) {
        print("ImageID: \(id)")
        let vc = NewsImageVC()
        vc.imageView.image = image
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        
        present(vc, animated: true, completion: nil)
    }
}
