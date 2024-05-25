//
//  AppEndpoints.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

struct UserEndpoint: APIEndpoint {
    var path: String { "https://jsonplaceholder.typicode.com/users" }
    var method: HTTPMethod { .get }
}
