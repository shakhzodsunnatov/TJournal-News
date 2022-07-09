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
        
        cell.configuration(by: model[indexPath.row])
        
        if indexPath.row == model.count - 1 {
            viewModel.getNews()
        }
        
        return cell
    }
    
    func imageTapped(image: UIImage) {
        let vc = NewsImageVC()
        vc.imageView.image = image
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        
        present(vc, animated: true, completion: nil)
    }
}
