//
//  CouponTableViewCell.swift
//  storecube-ios
//
//  Created by Радмир Тельман on 13.07.2023.
//

import UIKit
import SnapKit

final class CouponTableViewCell: UITableViewCell {
    
    // MARK: - UI
    
    private lazy var couponImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "coupon")
        return imageView
    }()
        
    private lazy var percentLabel: UILabel = {
        let label = UILabel()
        label.text = "30\n%"
        label.font = UIFont.boldSystemFont(ofSize: 42)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    
    private lazy var saleLabel: UILabel = {
        let label = UILabel()
        label.text = "Sale OFF"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.text = "7 days left"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    private lazy var copyButton: UIButton = {
        let button = UIButton()
        button.setTitle("COPY", for: .normal)
        button.setTitleColor(UIColor(red: 0.576, green: 0.761, blue: 0.992, alpha: 1.0), for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 14
        return button
    }()



    

    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    // MARK: - setupViews
    
    private func setupViews() {
        addSubview(couponImageView)
        addSubview(percentLabel)
        addSubview(saleLabel)
        addSubview(timeLabel)
        addSubview(copyButton)
    }
    
    // MARK: - setupConstraints
    
    private func setupConstraints() {
        couponImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-12)
            make.height.equalTo(124)
        }
        
        percentLabel.snp.makeConstraints { make in
            make.centerY.equalTo(couponImageView.snp.centerY)
            make.leading.equalTo(couponImageView.snp.leading).offset(24)
        }
        
        saleLabel.snp.makeConstraints { make in
            make.top.equalTo(couponImageView.snp.bottom).offset(50)
            make.leading.equalTo(percentLabel.snp.trailing).offset(50)
        }
        
        timeLabel.snp.makeConstraints() { make in
            make.top.equalTo(saleLabel.snp.bottom).offset(10)
            make.leading.equalTo(percentLabel.snp.trailing).offset(50)
        }
        
        copyButton.snp.makeConstraints { make in
            make.top.equalTo(couponImageView.snp.bottom).offset(50)
            make.trailing.equalTo(couponImageView.snp.trailing).offset(-20)
            make.leading.greaterThanOrEqualTo(saleLabel.snp.trailing).offset(20)
            make.height.equalTo(70)
            make.width.equalTo(70)
        }

    }
    
}
