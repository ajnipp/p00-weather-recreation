//
//  HourlyWeather.swift
//  p00-weather
//
//  Created by Samuel Shi on 9/21/21.
//

import Foundation

struct DailyWeather: Identifiable {
    let id = UUID()
    
    let day: String
    let iconName: String
    let low: Int
    let high: Int
}

extension DailyWeather {
    var formattedLow: String {
        return "\(low)º"
    }
    
    var formattedHigh: String {
        return "\(high)º"
    }
    
    static var week: [DailyWeather] {
        [
            DailyWeather(day: "Today", iconName: "sun.max.fill", low: 51, high: 76),
            DailyWeather(day: "Tue", iconName: "sun.max.fill", low: 52, high: 76),
            DailyWeather(day: "Wed", iconName: "sun.max.fill", low: 46, high: 70),
            DailyWeather(day: "Thu", iconName: "sun.max.fill", low: 56, high: 80),
            DailyWeather(day: "Fri", iconName: "sun.max.fill", low: 54, high: 78),
            DailyWeather(day: "Sat", iconName: "sun.max.fill", low: 53, high: 76),
            DailyWeather(day: "Sun", iconName: "sun.max.fill", low: 52, high: 77)
        ]
    }
}
