//
//  DefaultsType.swift
//  PlainBagel
//
//  Created by Roben Kleene on 1/20/18.
//  Copyright © 2018 Roben Kleene. All rights reserved.
//

import Foundation

@objc public protocol DefaultsType {
    @objc(setObject:forKey:)
    func set(_ value: Any?, forKey defaultName: String)

    func removeObject(forKey defaultName: String)
    func object(forKey defaultName: String) -> Any?
    func string(forKey defaultName: String) -> String?
    func array(forKey defaultName: String) -> [Any]?
    func dictionary(forKey defaultName: String) -> [String: Any]?
    func data(forKey defaultName: String) -> Data?
    func stringArray(forKey defaultName: String) -> [String]?
    func integer(forKey defaultName: String) -> Int
    func float(forKey defaultName: String) -> Float
    func double(forKey defaultName: String) -> Double
    func bool(forKey defaultName: String) -> Bool

    @objc(URLForKey:)
    func url(forKey defaultName: String) -> URL?

    @objc(setInteger:forKey:)
    func set(_ value: Int, forKey defaultName: String)

    @objc(setFloat:forKey:)
    func set(_ value: Float, forKey defaultName: String)

    @objc(setDouble:forKey:)
    func set(_ value: Double, forKey defaultName: String)

    @objc(setBool:forKey:)
    func set(_ value: Bool, forKey defaultName: String)

    @objc(setURL:forKey:)
    func set(_ url: URL?, forKey defaultName: String)

    func dictionaryRepresentation() -> [String: Any]
}
