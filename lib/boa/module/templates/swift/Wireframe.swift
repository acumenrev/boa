//
//  <%= @prefixed_module %>Wireframe.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import Foundation
import UIKit

class <%= @prefixed_module %>Wireframe: NSObject {
    var rootWireframe: RootWireframe?
    var presenter: <%= @prefixed_module %>Presenter?
    var viewController: <%= @prefixed_module %>ViewController?

    override init() {
        super.init()
        self.setupComponents()
    }

    private func setupComponents() {
        let dataManager = <%= @prefixed_module %>DataManager()
        let presenter = <%= @prefixed_module %>Presenter()
        let interactor = <%= @prefixed_module %>Interactor()
        
        presenter.interactor = interactor
        presenter.wireframe = self
        
        interactor.dataManager = dataManager
        interactor.presenter = presenter
        
        self.presenter = presenter
    }

    func presentSelfFromViewController(viewController: UIViewController, identifier : String)
    {
        // init view controller 
        self.initViewController()

        // present controller
        // *** present self with RootViewController
        viewController.present(self.viewController!, animated: true) { 
            
        }
    }

    func pushSelfFromViewController(viewController : UIViewController, identifier : String) {
        // init view controller 
        self.initViewController()

        // push view controller
        viewController.navigationController?.pushViewController(self.viewController!, animated: true)
    }
}

extension <%= @prefixed_module %>Wireframe : <%= @prefixed_module %>ModuleDelegate {

    /// Init view controller
    ///
    ///
    fileprivate func initViewController()  {
        // save reference
        self.viewController = <%= @prefixed_module %>ViewController(nibName: "<%= @prefixed_module %>ViewController", bundle: nil)
        self.viewController?.delegate = self
        // view <-> presenter
        self.presenter?.userInterface = self.viewController
        self.viewController?.eventHandler = self.presenter
    }
}