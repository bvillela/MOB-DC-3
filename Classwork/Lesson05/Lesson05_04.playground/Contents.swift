/*

    Classes vs. Structs

    Classes: Pass by Reference
    Struct:  Pass by Copy

*/

class Car:  {
    var wheels : Int
    
    init(wheels: Int) {
        self.wheels = wheels
    }
    
}


struct Line {

    var lenght: Int

}


var firstCar = Car(wheels: 4)
var secondCar = Car(wheels: 8)

firstCar = secondCar
firstCar
firstCar.wheels = 10
firstCar
secondCar





