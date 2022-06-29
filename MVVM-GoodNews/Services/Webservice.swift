//
//  Webservice.swift
//  MVVM-GoodNews
//
//  Created by Kürşat Şimşek on 28.06.2022.
//

import Foundation

class Webservice {
    
    func getArticle(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                    print(articleList.articles)
                }
            }
        }.resume()
    }
    
}
