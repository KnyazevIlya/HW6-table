import Foundation

class Dataset {
    
    private let names = PersonSourceData().names.shuffled()
    private let surenames = PersonSourceData().surnames.shuffled()
    private let phones = PersonSourceData().phones.shuffled()
    
    private var people: [Person] = []
    
    init(numberOfPeople: Int) {
        for index in 0..<numberOfPeople {
            people.append(Person(name: names[index], surname: surenames[index], phone: phones[index]))
        }
    }
    
    func getData() -> [Person]{
        return people
    }
}
