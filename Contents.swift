import Foundation

extension Date
{
    var day : String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        return formatter.string(from: self)
    }
    
    var month : String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MM"
        return formatter.string(from: self)
    }
    
    var year : String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return formatter.string(from: self)
    }
    
    var dateAsPrettyString : String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd<>MM<>yyyy"
        return formatter.string(from: self)
    }
}
//MARK: TimeIntervalSinceReferenceDate
let someDateTime = Date(timeIntervalSinceReferenceDate: -123456789.0)

print(someDateTime)
print(someDateTime.day)
print(someDateTime.month)
print(someDateTime.year)
print(someDateTime.dateAsPrettyString)

//MARK: DateComponents
var dateComponents = DateComponents()
dateComponents.year = 2021
dateComponents.month = 01
dateComponents.day = 08

let userCalender = Calendar(identifier: .gregorian)
if let userDate = userCalender.date(from: dateComponents) {
    print(userDate)
    print(userDate.day)
    print(userDate.month)
    print(userDate.year)
    print(userDate.dateAsPrettyString)
}


 
