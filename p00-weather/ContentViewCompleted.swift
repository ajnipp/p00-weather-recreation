//
//  ContentView.swift
//  p00-weather
//
//  Created by Samuel Shi on 9/21/21.
//

import SwiftUI

struct ContentViewCompleted: View {
    var body: some View {
        ScrollView {
            VStack {
                CurrentWeatherView()
                
                HourlyWeatherView()
                
                DailyWeatherView()
            }
        }
        .fullscreenBackground(backgroundGradient)
    }
    
    var backgroundGradient: LinearGradient {
        LinearGradient(colors: [.blue1, .blue2],
                       startPoint: .top,
                       endPoint: .bottom)
    }
}

struct CurrentWeatherView: View {
    var body: some View {
        VStack {
            Text("Chapel Hill")
                .font(.title)
            
            Text("70º")
                .font(.system(size: 90, weight: .thin, design: .default))
            
            Text("Sunny")
                .font(.title3)
                .fontWeight(.semibold)
            
            HStack {
                Text("H:76º")
                Text("L:51º")
            }
            .font(.title2)
        }
        .shadow(radius: 10)
        .padding(.vertical, 40)
    }
}

struct HourlyWeatherView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sunny conditions will continue all day.")
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(HourlyWeather.day) { day in
                        VStack(spacing: 10) {
                            Text(day.time)
                            
                            Image(systemName: day.iconName)
                                .font(.title2)
                                .foregroundColor(.yellow)
                            
                            Text(day.formattedTemperature)
                                .font(.title3)
                        }
                        .padding(.trailing)
                    }
                }
            }
        }
        .padding()
        .background(Color.blue3)
        .cornerRadius(10)
        .padding()
    }
}

struct DailyWeatherView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Label("10-DAY FORECAST", systemImage: "calendar")
                .font(.subheadline)
            
            ForEach(DailyWeather.week) { day in
                VStack {
                    Divider()
                    
                    HStack {
                        Text(day.day)
                        
                        Spacer()
                        
                        Image(systemName: day.iconName)
                            .font(.headline)
                            .foregroundColor(.yellow)
                            .padding(.trailing, 35)
                        
                        Text(day.formattedLow)
                        
                        Capsule()
                            .fill(temperatureGradient)
                            .frame(width: 100, height: 3)
                        
                        Text(day.formattedHigh)
                    }
                }
            }
        }
        .padding()
        .background(Color.blue3)
        .cornerRadius(10)
        .padding([.horizontal, .bottom])
    }
    
    var temperatureGradient: LinearGradient {
        LinearGradient(colors: [.green, .yellow, .red],
                       startPoint: .leading,
                       endPoint: .trailing)
    }
}

struct ContentViewCompleted_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCompleted().preferredColorScheme(.dark)
    }
}
