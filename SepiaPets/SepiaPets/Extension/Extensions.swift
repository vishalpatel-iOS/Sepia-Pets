//
//  Extensions.swift
//  SepiaPets
//
//  Created by codiste on 26/02/23.
//

import Foundation
import SwiftUI

extension Date {
    var calendar: Calendar { Calendar.current }

    var weekday: Int {
        (calendar.component(.weekday, from: self) - calendar.firstWeekday + 7) % 7 + 1
    }
}

extension Formatter {
    static let today: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .init(identifier: "en_US_POSIX")
        dateFormatter.defaultDate = Calendar.current.startOfDay(for: Date())
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter
        
    }()
}

extension Image {
    func imageModifire() -> some View {
        self
            .resizable()
            .scaledToFill()
    }
    
    func iconModifire() -> some View {
        self
            .imageModifire()
            .frame(maxWidth: 120)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}
