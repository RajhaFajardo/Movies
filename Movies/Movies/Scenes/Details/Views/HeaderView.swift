//
//  HeaderView.swift
//  Movies
//
//  Created by Rajha Fajardo on 14/10/21.
//

import UIKit

class HeaderView: UIView {

  lazy var backgroundImage: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  lazy var contentView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  lazy var titleStackView: UIStackView = {
    let stack = UIStackView()
    stack.translatesAutoresizingMaskIntoConstraints = false
    return stack
  }()
  
  lazy var infoLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "2020 - 109 min"
    return label
  }()
  
  lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "BOMBSHELL - O ESCÂNDALO"
    return label
  }()

  lazy var buttonsStackView: UIStackView = {
    let stack = UIStackView()
    stack.translatesAutoresizingMaskIntoConstraints = false
    return stack
  }()
  
  lazy var playButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  lazy var addButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  lazy var shareButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  init() {
    super.init(frame: .zero)
    buildHierarchy()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func buildHierarchy() {
    addSubview(backgroundImage)
    addSubview(contentView)
    contentView.addSubview(titleStackView)
    titleStackView.addArrangedSubview(infoLabel)
    titleStackView.addArrangedSubview(titleLabel)
    contentView.addSubview(buttonsStackView)
    buttonsStackView.addArrangedSubview(playButton)
    buttonsStackView.addArrangedSubview(addButton)
    buttonsStackView.addArrangedSubview(shareButton)
  }
  
  private func setContraints() {
    backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
    backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    contentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    contentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    titleStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
    titleStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    titleStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    titleStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
  }
  
}
