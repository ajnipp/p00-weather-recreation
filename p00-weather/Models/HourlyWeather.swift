//
//  HourlyWeather.swift
//  p00-weather
//
//  Created by Samuel Shi on 9/21/21.
//

import Foundation

struct HourlyWeather: Identifiable {
    let id = UUID()
    
    let time: String
    let iconName: String
    let temperature: Int
}

extension HourlyWeather {
    var formattedTemperature: String {
        return "\(temperature)º"
    }
    
    static var day: [HourlyWeather] {
        [
            HourlyWeather(time: "Now", iconName: "sun.max.fill", temperature: 70),
            HourlyWeather(time: "10am", iconName: "sun.max.fill", temperature: 70),
            HourlyWeather(time: "11am", iconName: "sun.max.fill", temperature: 81),
            HourlyWeather(time: "12pm", iconName: "sun.max.fill", temperature: 72),
            HourlyWeather(time: "1pm", iconName: "sun.max.fill", temperature: 74),
            HourlyWeather(time: "2pm", iconName: "sun.max.fill", temperature: 75),
            HourlyWeather(time: "3pm", iconName: "sun.max.fill", temperature: 76),
            HourlyWeather(time: "4pm", iconName: "sun.max.fill", temperature: 75),
            HourlyWeather(time: "5pm", iconName: "sun.max.fill", temperature: 73),
            HourlyWeather(time: "6pm", iconName: "sun.max.fill", temperature: 71),
            HourlyWeather(time: "7pm", iconName: "sun.max.fill", temperature: 70)
        ]
    }
}
