//
//  AuthService.swift
//  semina6
//
//  Created by Haeseok Lee on 2020/11/21.
//

import Foundation
import Alamofire

struct AuthService {
    static let shared = AuthService();
    
    func signIn(email: String, password: String, completion: @escaping (NetworkResult<Any>) -> (Void)) -> (Void) {
        
        let url = APIConstants.usersSignInURL
        
        let header: HTTPHeaders = [
            "Content-Type": "application/json"
        ]
        
        let body: Parameters = [
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(
            url,
            method: .post,
            parameters: body,
            encoding: JSONEncoding.default,
            headers: header
        )
        
        dataRequest.responseData(completionHandler: {(response) in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {
                    return
                }
                guard let data = response.value else {
                    return
                }
                completion(judegeSignInData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        })
    }
    
    
    func signUp(email: String, password: String, username: String, completion: @escaping (NetworkResult<Any>) -> (Void)) -> (Void) {
        
        let url = APIConstants.usersSignUpURL
        
        let header: HTTPHeaders = [
            "Content-Type": "application/json"
        ]
        
        let body: Parameters = [
            "email": email,
            "password": password,
            "userName": username
        ]
        
        let dataRequest = AF.request(
            url,
            method: .post,
            parameters: body,
            encoding: JSONEncoding.default,
            headers: header
        )
        
        dataRequest.responseData(completionHandler: {(response) in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {
                    return
                }
                guard let data = response.value else {
                    return
                }
                completion(judegeSignUpData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        })
    }
    
    
    private func judegeSignInData(status: Int, data: Data) -> NetworkResult<Any> {
        
        let decoder = JSONDecoder()
        guard let decodedData = try?decoder.decode(GenericResponse<SignInData>.self, from: data) else {
            return .pathErr
        }
        
        switch status {
        case 200:
            return .success(decodedData.data ?? "success!")
        case 400:
            return .requestErr(decodedData.message)
        case 500:
            return .serverErr
        default:
            return .pathErr
        }
    }
    
    private func judegeSignUpData(status: Int, data: Data) -> NetworkResult<Any> {
        
        let decoder = JSONDecoder()
        guard let decodedData = try?decoder.decode(GenericResponse<SignInData>.self, from: data) else {
            return .pathErr
        }
        
        switch status {
        case 200:
            return .success(decodedData.data ?? "success!")
        case 400:
            return .requestErr(decodedData.message)
        case 500:
            return .serverErr
        default:
            return .pathErr
        }
    }
    
}
