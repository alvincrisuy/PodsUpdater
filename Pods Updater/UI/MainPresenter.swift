//
//  MainPresenter.swift
//  Pods Updater
//
//  Created by Kizito Nwose on 30/01/2018.
//  Copyright © 2018 Kizito Nwose. All rights reserved.
//

import Foundation
import RxSwift

class MainPresenter: MainContract.Presenter {
    
    private weak var view : MainContract.View?
    private var disposeBag = DisposeBag()
    private var source: DataSource!
    
    init(view: MainContract.View, source: DataSource) {
        self.source = source
        self.view = view
    }
    
    func parsePodfile(at path: URL) {
        source.parsePodfile(at: path)
    }

    func start() { }
    
    func stop() {  }
}