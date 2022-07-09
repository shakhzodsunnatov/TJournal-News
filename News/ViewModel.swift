//
//  ViewModel.swift
//  News
//
//  Created by Shokhzod on 10/07/22.
//

import Foundation

class ViewModel {
    
    var isLoading = Box(true)
    var model: Box<[ResultItem]> = Box([])
    var errorStuck = Stacks()
    var lastID = 0
    
    func getNews() {
        self.isLoading.value = true
        let completion: NewApi.CompletionOnRequest<News> = { result in
            switch result {
            case .success(let response):
                self.isLoading.value = false
                guard let model = response.result?.items else {
                    self.errorStuck.errors.value.append(RestError.custom(message: "Model is Empty"))
                    return
                }
                
                if self.lastID != 0, !model.isEmpty {
                    self.model.value += model
                    self.lastID = response.result?.lastID ?? 0
                } else {
                    self.model.value = model
                    self.lastID = response.result?.lastID ?? 0
                }
                
            case .failure(let error):
                self.isLoading.value = false
                self.errorStuck.errors.value.append(error)
            }
        }
        
        NewApi.get(route: "/timeline?allSite=false&lastId=\(self.lastID)", headersToAdd: nil, completion: completion)
    }
    
}
