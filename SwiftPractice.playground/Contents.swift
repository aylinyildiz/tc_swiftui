import UIKit

var productName = "TV"
var age = 23
var height = 1.78
var control = false

print(productName)
print("\(age) years old.")

//constant - sabitler
//kotlin val -java dart final

let y = 100

//Optional
//Nullable - Null Safety
var str = "Hello"

//null = nil
var message:String? //var message:String? = nil

message = "Hello world"
if message != nil {
    print(message!) //unwrappping -> optionaldan kurtardım ve sonucu aldım anlamına gelir. burada sadece ana değere erişmeyi ifade eder. optional parantezinden çıkarır. hata kontrolüyle alakası yoktur.
}else{
    print("message is nil")
}

//optional Binding - if let
//let temp = message  message  nil ise ifade total olarak false olur


if let temp = message {
    print(temp) // otomatik unwrapping
}else{
    print("message is nil")
}

if var temp = message {
    print(temp) // otomatik unwrapping
    temp = "updated message"
    print(temp)
}else{
    print("message is nil")
}

//Object Oriented - Nesne Tabanlı
//Class - Object
class Product {
    var id:Int?
    var name:String?
    var price:Double?
    
    //self bulunduğumuz sınıf demek (javada this gibi)
    
    init(id:Int, name:String, price:Double){
        self.id = id //Shadowing
        self.name = name
        self.price = price
        print("init worked...")
        //Bu sınıftan nesne oluşturulduğunda çalışır.
    }
}

var product1 = Product(id:1, name:"TV", price: 39000.0)

print(product1.id!)
print(product1.name!)
print(product1.price!)

var product2 = Product(id:2, name:"Laptop", price: 78000.0)


print(product2.id!)
print(product2.name!)
print(product2.price!)
