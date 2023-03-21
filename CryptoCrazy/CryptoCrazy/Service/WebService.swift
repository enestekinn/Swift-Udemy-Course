//
//  WebService.swift
//  CryptoCrazy
//
//  Created by Enes Tekin on 20.03.2023.
//

import Foundation

class WebService {
    func downloadCurrencies(url : URL, completion: @escaping ([CryptoCurrency]?) -> ()) {
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            }else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)

                }
                
                
                
            }
        }.resume()
    }
}
