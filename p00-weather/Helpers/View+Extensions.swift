//
//  View+Extensions.swift
//  p00-weather
//
//  Created by Samuel Shi on 9/21/21.
//

import SwiftUI

extension View {
    func fullscreenBackground<Content: View>(_ content: Content) -> some View {
        ZStack {
            content.ignoresSafeArea()

            self
        }
    }
    
    func fullscreenBackground<Content: View>(@ViewBuilder content: () -> Content) -> some View {
        ZStack {
            content().ignoresSafeArea()

            self
        }
    }
}
