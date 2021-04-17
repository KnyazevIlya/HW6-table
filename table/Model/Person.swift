import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    init(name: String, surname: String, phone: String){
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = name.lowercased() + "." + surname.lowercased() + "@gamil.com"
    }
    
    static func contectInfoFields() -> Int {
        //numbre of properties excluding name and surname
        return 2
    }
}
