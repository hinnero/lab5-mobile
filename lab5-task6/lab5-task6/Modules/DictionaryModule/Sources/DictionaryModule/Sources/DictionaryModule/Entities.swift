public struct Avto: Comparable {
    public let model: String
    public let cost: Double

    public init(model: String, cost: Double) {
        self.model = model
        self.cost = cost
    }

    public static func < (lhs: Avto, rhs: Avto) -> Bool {
        lhs.cost < rhs.cost
    }
}

public struct Vendor {
    public let name: String
    public let country: String

    public init(name: String, country: String) {
        self.name = name
        self.country = country
    }
}
