class Car {
    
    // Properties
    
    var wheels: Int
    var doors: Int
    var name: String?
    
    // Initializer method (aka: Initializer Function)
    // init is the same than "func initialize"
    
    init(wheels: Int, doors:Int) {
        
        self.wheels = wheels
        self.doors = doors
        self.name = name
        
    }
    
    // Normal Method
    
    func drive() ->Bool {
        println(self.wheels)
        println(wheels)
        
        return true
    }
}



