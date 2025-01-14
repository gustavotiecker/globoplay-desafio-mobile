//
//  TitleLabel.swift
//  MoviesApp
//
//  Created by Gustavo Tiecker on 01/03/22.
//

import UIKit

class TitleLabel: UILabel {
    
    // MARK: - Initilizers
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    // MARK: - Private Methods
    private func configure() {
        textColor = .white
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        numberOfLines = 2
        translatesAutoresizingMaskIntoConstraints = false
    }
}
