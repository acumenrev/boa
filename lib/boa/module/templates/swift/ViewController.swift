//
//  <%= @prefixed_module %>ViewController.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import UIKit

class <%= @prefixed_module %>ViewController: UIViewController, <%= @prefixed_module %>ViewInterface {
    var eventHandler: <%= @prefixed_module %>ModuleInterface?
    var delegate: <%= @prefixed_module %>ModuleDelegate?
    var identifier: String = ""

    // MARK: - View lifecycle

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.setupUI()
    }

    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
    }

    deinit {
        self.deregisterObservers()
    }
}

// MARK: - <%= @prefixed_module %>ViewInterface methods
// *** implement view_interface methods here
extension <%= @prefixed_module %>ViewController {

    /** 
       Setup UI for view 
     */
    fileprivate func setupUI() {
        registerNibs()
        registerObservers()
    }

    /**
        Register nibs 
     */
    private func registerNibs() {

    }

    /**
        Register observers 
     */
    private func registerObservers() {

    }

    /**
        Deregister observers 
     */
    fileprivate func deregisterObservers() {

    }
}

// MARK: - Button event handlers
// ** handle UI events here
extension <%= @prefixed_module %>ViewController {

}
