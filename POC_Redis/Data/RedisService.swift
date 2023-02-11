//
//  RedisService.swift
//  POC_Redis
//
//  Created by Caio Soares on 10/02/23.
//

import Foundation
import SwiftRedis

class RedisInteractable: changeNameKeyUseCase {
    
    let redis = Redis()
    
    func connectToLocalRedisService(keyname: String, inputvalue: String) {
        redis.connect(host: "localhost", port: 6379) {
            (redisError: NSError?) in
            if let error = redisError {
                print(error)
            }
            else {
                print("Managed to connect to Redis. Good work!")
                redis.hset("amigos do discord", field: "nickname do discord", value: "ajani") {
                    (result: Bool, redisError: NSError?) in
                    if let error = redisError {
                        print(error)
                    }
                }
            }
        }
    }
    
    override func execute() {
        connectToLocalRedisService(keyname: "swiftredis", inputvalue: "jonjoca")
    }
    
}
