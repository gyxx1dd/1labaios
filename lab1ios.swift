class Vehicle
{
    let brand: String
    let model: String?
    let year: Int?
    let mileage: Double?
    let fuelType: FuelType
    
    init(brand: String, model: String?, year: Int?, mileage: Double?, fuelType: FuelType)
    {
        self.brand = brand
        self.model = model
        self.year = year
        self.mileage = mileage
        self.fuelType = fuelType 
    }
    func describe() -> String
    {
        var description = "Vehicle brand \(brand)"
        if let model = model {
            description += ",model \(model)"
        }
        else{
            description += " model unknown"
        }
        if let year = year{
            description += "year \(year)"
        }
        else{
            description += "year unknown"
        }
        if let mileage = mileage
        {
            description += "mileage \(mileage) km"
        }
        else
        {
            description += "mileage unknowm"
        }
        description += "fuel type \(fuelType.rawValue)"
        return description
    }
} 

enum FuelType: String
{
    case petrol = "Petrol"
    case diesel = "Diesel"
    case electric = "Electric"
}

func vehicleDescription(vehicle: Vehicle)
{
    print(vehicle.describe())
}
let vehicles = [
Vehicle(brand: "Toyota", model: "Camry", year: 2018, mileage: 35000.5, fuelType: .petrol),
Vehicle(brand: "Tesla", model: "s", year: 2019, mileage: 20000.2, fuelType: .electric),
Vehicle(brand: "Ford", model: "nil", year: 2018, mileage: nil, fuelType: .diesel),
]

for vehicle in vehicles
{
    vehicleDescription(vehicle: vehicle)
}

class Owner {
    let name: String
    var vehicle: Vehicle
    init(name: String, vehicle: Vehicle)
    {
        self.name = name
        self.vehicle = vehicle 
    }
    
    func describeOwner()
    {
        print("\(name) owns the following vehicle \(vehicle.describe())")
    }
}
let owner = Owner(name: "john", vehicle: vehicles[1])
owner.describeOwner()
