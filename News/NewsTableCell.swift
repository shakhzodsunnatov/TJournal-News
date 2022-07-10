//
//  NewsTableCell.swift
//  News
//
//  Created by Shokhzod on 09/07/22.
//

import UIKit
import SnapKit

protocol ImageTappedDelegate {
    func imageTapped(image: UIImage, id: String)
}

class NewsTableCell: UITableViewCell {
    
    var delegate: ImageTappedDelegate?
    var imageId = ""
    
    private let loader = ImageLoader()
    
    let containerView = UIView()
    
    private let headerStack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.spacing = 12
        stack.distribution = .fill
        return stack
    }()
    
    private let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.isUserInteractionEnabled = true
        return stack
    }()
    
    private let iconHolderView = UIImageView()
    private let iconImageView = UIImageView()
    
    private let groupNameLB: UILabel = {
        let label = UILabel()
        label.text = "Кино и сериалы"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.numberOfLines = 1
        return label
    }()
    
    private let ownerNameLB: UILabel = {
        let label = UILabel()
        label.text = "Игорь"
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 1
        return label
    }()
    
    private let hourLabel: UILabel = {
        let label = UILabel()
        label.text = "1 hour"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black.withAlphaComponent(0.6)
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Long Text Line number one"
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.numberOfLines = 0
        label.isHidden = true
        return label
    }()
    
    private let subTitle: PaddingLabel = {
        let label = PaddingLabel()
        label.text = "Из-за массового перехода на «удалёнку» такие коворкинги будут пользоваться большим спросом, считает эксперт."
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.leftInset = 20
        label.rightInset = 20
        label.isHidden = true
        return label
    }()
    
    var newsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "person")
        imageView.isHidden = true
        return imageView
    }() {
        didSet {
            makeConstraints()
            self.reloadInputViews()
        }
    }
    
    private let commitImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "message")
        return imageView
    }()
    
    private let commitCountLB: UILabel = {
        let label = UILabel()
        label.text = "234"
        return label
    }()
    
    private let readerCountLB: UILabel = {
        let label = UILabel()
        label.text = "124"
        label.textColor = .green
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        makeHierarchy()
        makeConstraints()
        
        contentView.backgroundColor = .gray.withAlphaComponent(0.3)
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeHierarchy() {
        contentView.addSubview(containerView)
        // Header
        containerView.addSubview(headerStack)
        headerStack.addArrangedSubviews(
            iconHolderView,
            groupNameLB,
            ownerNameLB,
            hourLabel
        )
        iconHolderView.addSubview(iconImageView)
        
        // Content
        containerView.addSubviews(
            titleLabel,
            mainStack
        )
        
        mainStack.addArrangedSubviews(
            subTitle,
            newsImageView
        )
        
        //footer
        containerView.addSubviews(
            commitImageView,
            commitCountLB,
            readerCountLB
        )
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        newsImageView.isUserInteractionEnabled = true
        newsImageView.addGestureRecognizer(gesture)
        
    }
    
    func makeConstraints() {
        let marginGuide = contentView.layoutMarginsGuide
        
        containerView.snp.makeConstraints { make in
            make.bottom.horizontalEdges.equalToSuperview()
            make.top.equalToSuperview().inset(20)
        }
        containerView.backgroundColor = .white
        
        headerStack.snp.makeConstraints { make in
            make.top.equalTo(marginGuide.snp.top).inset(20)
            make.horizontalEdges.equalTo(marginGuide.snp.horizontalEdges)
        }
        
        iconImageView.snp.makeConstraints { make in
            make.size.equalTo(22)
            make.edges.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(headerStack.snp.bottom).inset(-11)
            make.horizontalEdges.equalTo(marginGuide.snp.horizontalEdges)
        }
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).inset(-8)
            make.horizontalEdges.equalToSuperview()
        }
        
        newsImageView.snp.makeConstraints { make in
            make.height.equalTo(300)
            make.horizontalEdges.equalToSuperview()
        }
        
        commitImageView.snp.makeConstraints { make in
            make.size.equalTo(20)
            make.top.equalTo(mainStack.snp.bottom).inset(-20)
            make.left.equalTo(marginGuide.snp.left)
            make.bottom.equalTo(marginGuide.snp.bottom)
        }
        
        commitCountLB.snp.makeConstraints { make in
            make.centerY.equalTo(commitImageView)
            make.left.equalTo(commitImageView.snp.right).inset(-8)
        }
        
        readerCountLB.snp.makeConstraints { make in
            make.centerY.equalTo(commitImageView)
            make.right.equalTo(marginGuide.snp.right)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        iconImageView.clipsToBounds = true
        iconImageView.layer.cornerRadius = 5
        makeConstraints()
    }
    
    @objc private func imageTapped() {
        delegate?.imageTapped(image: newsImageView.image!, id: imageId)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        newsImageView.cancelImageLoad()
        newsImageView.image = nil
        newsImageView.isHidden = true
    }
    
    
    func configuration(by model: ResultItem) {
        DispatchQueue.main.async {
            
            if
                let urlstr = model.data?.subsite?.avatar?.data?.uuid,
                let url = URL(string: urlstr) {
                self.iconImageView.loadThumbnail(urlSting:  "https://leonardo.osnova.io/" +  urlstr)
                self.imageId = urlstr
                self.iconImageView.isHidden = false
            }
            
            self.groupNameLB.text = model.data?.subsite?.name ?? "name"
            self.ownerNameLB.text = model.data?.author?.name ?? "No Name"
            
            let hour = Calendar.current.component(.hour, from: model.data?.date ?? Date.now)
            
            self.hourLabel.text = "hour \(hour)"
            
            if let title = model.data?.title {
                self.titleLabel.text = title
                self.titleLabel.isHidden = false
            }
            
            if let subTitle = model.data?.blocks?.first?.data?.text {
                self.subTitle.text = subTitle
                self.subTitle.isHidden = false
            }
            
            self.commitCountLB.text = String(describing: model.data?.counters?.comments ?? 0)
            self.readerCountLB.text = String(describing: model.data?.counters?.reposts ?? 0)
            
        }
    }
    
}


extension UIImageView {
    func loadImage(at url: URL) {
        UIImageLoader.loader.load(url, for: self)
    }
    
    func cancelImageLoad() {
        UIImageLoader.loader.cancel(for: self)
    }
}

class UIImageLoader {
    static let loader = UIImageLoader()
    
    private let imageLoader = ImageLoader()
    private var uuidMap = [UIImageView: UUID]()
    
    private init() {}
    
    func load(_ url: URL, for imageView: UIImageView) {
        // 1
        let token = imageLoader.loadImage(url) { result in
            // 2
            defer { self.uuidMap.removeValue(forKey: imageView) }
            do {
                // 3
                let image = try result.get()
                DispatchQueue.main.async {
                    imageView.image = image
                    imageView.isHidden = false
                }
            } catch {
                // handle the error
            }
        }
        
        // 4
        if let token = token {
            uuidMap[imageView] = token
        }
    }
    
    func cancel(for imageView: UIImageView) {
        if let uuid = uuidMap[imageView] {
            imageLoader.cancelLoad(uuid)
            uuidMap.removeValue(forKey: imageView)
        }
    }
}


class ImageLoader {
    private var loadedImages = [URL: UIImage]()
    private var runningRequests = [UUID: URLSessionDataTask]()
    
    func loadImage(_ url: URL, _ completion: @escaping (Swift.Result<UIImage, Error>) -> Void) -> UUID? {
        
        // 1
        if let image = loadedImages[url] {
            completion(.success(image))
            return nil
        }
        
        // 2
        let uuid = UUID()
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // 3
            defer {self.runningRequests.removeValue(forKey: uuid) }
            
            // 4
            if let data = data, let image = UIImage(data: data) {
                self.loadedImages[url] = image
                completion(.success(image))
                return
            }
            
            // 5
            guard let error = error else {
                // without an image or an error, we'll just ignore this for now
                // you could add your own special error cases for this scenario
                return
            }
            
            guard (error as NSError).code == NSURLErrorCancelled else {
                completion(.failure(error))
                return
            }
            
            // the request was cancelled, no need to call the callback
        }
        task.resume()
        
        // 6
        runningRequests[uuid] = task
        return uuid
    }
    
    func cancelLoad(_ uuid: UUID) {
        runningRequests[uuid]?.cancel()
        runningRequests.removeValue(forKey: uuid)
    }
}

