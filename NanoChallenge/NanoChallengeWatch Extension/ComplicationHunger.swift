//
//  ComplicationHunger.swift
//  NanoChallenge
//
//  Created by Edvaldo Junior on 09/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import WatchKit

class ComplicationHunger: NSObject, CLKComplicationDataSource {

    public func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Swift.Void) {
        
    }
    
    public func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Swift.Void) {
        handler(CLKComplicationPrivacyBehavior.showOnLockScreen)
    }
    
    func getNextRequestedUpdateDate(handler: @escaping (Date?) -> Void) {
        handler(Date(timeIntervalSinceNow: 60*60))
    }
    
    func getPlaceholderTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        
//        var template: CLKComplicationTemplate? = nil
//        switch complication.family {
//            
//        case .circularSmall:
//            let modularTemplate = CLKComplicationTemplateCircularSmallRingText()
//            modularTemplate.textProvider = CLKSimpleTextProvider(text: "--")
//            modularTemplate.fillFraction = 0.7
//            modularTemplate.ringStyle = CLKComplicationRingStyle.closed
//            template = modularTemplate
//        default:
//            template = nil
//        }
        handler(nil)
    }
    
    public func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Swift.Void) {
        
//        if complication.family == .circularSmall {
//            let template = CLKComplicationTemplateCircularSmallRingText()
//            template.textProvider = CLKSimpleTextProvider(text: "Augusto")
//            template.fillFraction = Float(14.76) / 10.0
//            template.ringStyle = CLKComplicationRingStyle.closed
//            
//            let timelineEntry = CLKComplicationTimelineEntry(date: NSDate() as Date, complicationTemplate: template)
//            handler(timelineEntry)
//        } else {
//            handler(nil)
//        }
        handler(nil)
    }
}
