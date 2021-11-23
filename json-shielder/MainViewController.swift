//
//  MainViewController.swift
//  json-shielder
//
//  Created by Maxim Skryabin on 23.11.2021.
//

import UIKit

class MainViewController: UIViewController {
  private let topContainerView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .clear
    return view
  }()
  
  private let topLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    label.text = "Input"
    return label
  }()
  
  private let topTextView: UITextView = {
    let textView = UITextView()
    textView.translatesAutoresizingMaskIntoConstraints = false
    textView.layer.borderWidth = 1.0
    textView.layer.borderColor = UIColor.black.cgColor
    return textView
  }()
  
  private let bottomContainerView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .clear
    return view
  }()
  
  private let bottomLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    label.text = "Output"
    return label
  }()
  
  private let bottomTextView: UITextView = {
    let textView = UITextView()
    textView.translatesAutoresizingMaskIntoConstraints = false
    textView.layer.borderWidth = 1.0
    textView.layer.borderColor = UIColor.black.cgColor
    textView.isEditable = false
    textView.isSelectable = true
    return textView
  }()
  
  private let shieldButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 4.0
    button.layer.masksToBounds = true
    button.backgroundColor = UIColor.systemBlue
    button.setTitle("Shield", for: .normal)
    return button
  }()
  
  private let unshieldButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 4.0
    button.layer.masksToBounds = true
    button.backgroundColor = UIColor.systemBlue
    button.setTitle("Unshield", for: .normal)
    return button
  }()
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
    view.backgroundColor = .white
    
    setupLayout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  private func setupLayout() {
    view.addSubview(topContainerView)
    topContainerView.addSubview(topLabel)
    topContainerView.addSubview(topTextView)
    view.addSubview(bottomContainerView)
    bottomContainerView.addSubview(bottomLabel)
    bottomContainerView.addSubview(bottomTextView)
    view.addSubview(shieldButton)
    view.addSubview(unshieldButton)
    
    view.addConstraints([
      topContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0),
      topContainerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16.0),
      topContainerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16.0),
      
      topLabel.topAnchor.constraint(equalTo: topContainerView.topAnchor),
      topLabel.leftAnchor.constraint(equalTo: topContainerView.leftAnchor),
      topLabel.rightAnchor.constraint(equalTo: topContainerView.rightAnchor),
      topLabel.heightAnchor.constraint(equalToConstant: 20.0),
      
      topTextView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 4.0),
      topTextView.leftAnchor.constraint(equalTo: topContainerView.leftAnchor),
      topTextView.rightAnchor.constraint(equalTo: topContainerView.rightAnchor),
      topTextView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor),
      
      bottomContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 16.0),
      bottomContainerView.leftAnchor.constraint(equalTo: topContainerView.leftAnchor),
      bottomContainerView.rightAnchor.constraint(equalTo: topContainerView.rightAnchor),
      bottomContainerView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor),
      
      bottomLabel.topAnchor.constraint(equalTo: bottomContainerView.topAnchor),
      bottomLabel.leftAnchor.constraint(equalTo: bottomContainerView.leftAnchor),
      bottomLabel.rightAnchor.constraint(equalTo: bottomContainerView.rightAnchor),
      bottomLabel.heightAnchor.constraint(equalTo: topLabel.heightAnchor),
      
      bottomTextView.topAnchor.constraint(equalTo: bottomLabel.bottomAnchor, constant: 4.0),
      bottomTextView.leftAnchor.constraint(equalTo: bottomContainerView.leftAnchor),
      bottomTextView.rightAnchor.constraint(equalTo: bottomContainerView.rightAnchor),
      bottomTextView.bottomAnchor.constraint(equalTo: bottomContainerView.bottomAnchor),
      
      shieldButton.topAnchor.constraint(equalTo: bottomContainerView.bottomAnchor, constant: 16.0),
      shieldButton.leftAnchor.constraint(equalTo: bottomContainerView.leftAnchor),
      shieldButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16.0),
      shieldButton.heightAnchor.constraint(equalToConstant: 50.0),
      
      unshieldButton.topAnchor.constraint(equalTo: shieldButton.topAnchor),
      unshieldButton.leftAnchor.constraint(equalTo: shieldButton.rightAnchor, constant: 8.0),
      unshieldButton.rightAnchor.constraint(equalTo: bottomContainerView.rightAnchor),
      unshieldButton.bottomAnchor.constraint(equalTo: shieldButton.bottomAnchor),
      unshieldButton.widthAnchor.constraint(equalTo: shieldButton.widthAnchor)
    ])
  }
}
