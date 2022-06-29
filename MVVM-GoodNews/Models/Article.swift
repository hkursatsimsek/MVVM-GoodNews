//
//  Article.swift
//  MVVM-GoodNews
//
//  Created by Kürşat Şimşek on 28.06.2022.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]?
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
