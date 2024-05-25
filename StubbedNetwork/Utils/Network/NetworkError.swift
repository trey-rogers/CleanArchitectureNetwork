//
//  NetworkError.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
    case serverError(statusCode: Int)
    case custom(message: String)
}
