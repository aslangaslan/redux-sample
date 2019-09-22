//
//  AppReducer.swift
//  CorporateBanking
//
//  Created by Giray Gençaslan on 22.09.2019.
//  Copyright © 2019 Giray Gençaslan. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    var newState = state ?? AppState()
    
    switch action {
    case _ as openUrl:
        newState.urlRequest = URLRequest(url: URL(string: "https://google.com")!)
    default:
        break
    }
    
    return newState
}
