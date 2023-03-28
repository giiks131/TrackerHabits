//
//  HabitModel.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 27/03/23.
//
import UIKit

public final class Habit: Codable {
    public var name: String
    public var date: Date
    public var trackDates: [Date]
    public var color: UIColor {
        get {
            return .init(red: r, green: g, blue: b, alpha: a)
        }
        set {
            var r: CGFloat = 0
            var g: CGFloat = 0
            var b: CGFloat = 0
            var a: CGFloat = 0
            newValue.getRed(&r, green: &g, blue: &b, alpha: &a)
            self.r = r
            self.g = g
            self.b = b
            self.a = a
        }
    }

    private var r: CGFloat
    private var g: CGFloat
    private var b: CGFloat
    private var a: CGFloat

    public init(name: String, date: Date, trackDates: [Date] = [], color: UIColor) {
        self.name = name
        self.date = date
        self.trackDates = trackDates
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
}

//extension Habit: Equatable {
//
//    public static func == (lhs: Habit, rhs: Habit) -> Bool {
//        lhs.name == rhs.name &&
//        lhs.date == rhs.date &&
//        lhs.trackDates == rhs.trackDates &&
//        lhs.r == rhs.r &&
//        lhs.g == rhs.g &&
//        lhs.b == rhs.b &&
//        lhs.a == rhs.a
//    }
//}
