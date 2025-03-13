//
//  ViewController.swift
//  WeatherApp
//
//  Created by Joao Roberto Fernandes Magalhaes on 21/02/25.
//

import UIKit

class ViewController: UIViewController {
    private lazy var backgroundview: UIView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "background")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var headerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.backgroundColor = UIColor(.cyan)
        return view
    }()
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
//        label.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        label.text = "25 ºC"
        label.textAlignment = .left
        label.textColor = UIColor(named: "primaryColor")
        return label
    }()
    
    private lazy var temperaturaLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "São Paulo"
        label.textAlignment = .center
        label.textColor = UIColor(named: "primaryColor")
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        return imageView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    private func setupView(){
        view.backgroundColor = .red
        
        view.addSubview(backgroundview)
        setHierarchy()
        setupConstraints()
        
    }
    private func setHierarchy(){
        view.addSubview(backgroundview)
        view.addSubview(headerView)
        
        headerView.addSubview(cityLabel)
        headerView.addSubview(temperaturaLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            backgroundview.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            backgroundview.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),
            backgroundview.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 0),
            
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169),
            
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 15),
            
            
//            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
//            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
//            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
//            cityLabel.heightAnchor.constraint(equalToConstant: 20),
            
//            temperaturaLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 21),
//            temperaturaLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 26),
//            temperaturaLabel.heightAnchor.constraint(equalToConstant: 100),
//            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
//            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
//            weatherIcon.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: -26),
//            weatherIcon.centerYAnchor.constraint(equalTo: temperaturaLabel.centerYAnchor),
//            weatherIcon.leadingAnchor.constraint(equalTo: temperaturaLabel.trailingAnchor, constant: 26),
        ])
        
    }

}

