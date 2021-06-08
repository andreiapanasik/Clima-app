import UIKit

class WeatherDataModel {

    var temperature : Int = 0
    var condition : Int = 0
    var city : String = ""
    var timeOfDay : String = ""
    var wetherIconName : String = ""
    
    func getTimeOfDay(hour: Int) -> String {
        if hour >= 6 && hour <= 20 {
            return ""
        }
        else {
            return "-night"
        }
    }
    
    func updateWeatherIcon(condition: Int) -> String {
        
    switch (condition) {
    
        case 0...300 :
            return "tstorm1" + timeOfDay
        
        case 301...500 :
            return "light_rain"
        
        case 501...600 :
            return "shower3"
        
        case 601...700 :
            return "snow4"
        
        case 701...771 :
            return "fog" + timeOfDay
        
        case 772...799 :
            return "tstorm3"
        
        case 800 :
            return "clear" + timeOfDay
        
        case 801...804 :
            return "cloudy2" + timeOfDay
        
        case 900...903, 905...1000  :
            return "tstorm3"
        
        case 903 :
            return "snow5"
        
        case 904 :
            return "clear" + timeOfDay
        
        default :
            return "dunno"
        }

    }
}
