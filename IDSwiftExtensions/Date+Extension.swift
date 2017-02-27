//
//  Date+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension Date {
    /// 获取日期中该月的天数
    func daysOfMonth() -> Int {
        let calender = NSCalendar(calendarIdentifier: .gregorian)
        guard let range = calender?.range(of: .day, in: .month, for: self) else {
            return 0
        }
        return range.length
    }
    /// 获取日期的上一个月
    func previousMonth() -> Date {
        let calender = NSCalendar(calendarIdentifier: .gregorian)
        var dateComponents = calender?.components([.year, .month, .day], from: self)
        var previousMonth = 1
        var previousYear = 1970
        let defaultDay = 2
        if let year = dateComponents?.year, let month = dateComponents?.month {
            if month == 1 {
                previousYear = year - 1
                previousMonth = 12
            } else {
                previousMonth = month - 1
                previousYear = year
            }
        }
        dateComponents?.setValue(defaultDay, for: .day)
        dateComponents?.setValue(previousYear, for: .year)
        dateComponents?.setValue(previousMonth, for: .month)
        guard let components = dateComponents, let previousDate = calender?.date(from: components) else {
            return Date()
        }
        return previousDate
    }
    /// 获取日期的下一个月
    func nextMonth() -> Date {
        let calender = NSCalendar(calendarIdentifier: .gregorian)
        var dateComponents = calender?.components([.year, .month, .day], from: self)
        var nextMonth: Int = 1
        var nextYear: Int = 1970
        let defaultDay = 1
        if let month = dateComponents?.month, let year = dateComponents?.year {
            if month == 12 {
                nextMonth = 1
                nextYear = year + 1
            } else {
                nextMonth = month + 1
                nextYear = year
            }
        }
        dateComponents?.setValue(nextYear, for: .year)
        dateComponents?.setValue(nextMonth, for: .month)
        dateComponents?.setValue(defaultDay, for: .day)
        guard let components = dateComponents, let nextDate = calender?.date(from: components) else {
            return Date()
        }
        return nextDate
    }
    /// 获取一月中第一天在一周内的索引：日：0，一：1，二：2 …… 六：六
    func indexOfWeekForFirstDayInMonth() -> Int {
        let calender = NSCalendar(calendarIdentifier: .gregorian)
        var dateComponents = calender?.components([.year, .month, .day, .weekday], from: self)
        dateComponents?.setValue(2, for: .day)
        let startDateOfMonth = calender?.date(from: dateComponents!)
        let startDateOfMonthComponents = calender?.components(.weekday, from: startDateOfMonth!)
        let indexOfWeek = ((startDateOfMonthComponents?.weekday)! + 5) % 7
        return indexOfWeek
    }
}
