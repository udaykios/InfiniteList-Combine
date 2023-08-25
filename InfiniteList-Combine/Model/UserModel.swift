//
//  UserModel.swift
//  InfiniteList-Combine
//
//  Created by Uday on 25/08/2023.
//

import Foundation

struct User: Decodable, Identifiable {
    let id: Int
    let name: String
    let avatarUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "login"
        case avatarUrl = "avatar_url"
    }
}
