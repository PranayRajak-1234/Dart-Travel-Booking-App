abstract class Transportation {
  final int id;
  final String origin;
  final String destination;
  final double basePrice;

  Transportation({
    required this.id,
    required this.origin,
    required this.destination,
    required this.basePrice,
  });

  void info();
}

class Flight extends Transportation {
  final String _classType;  // Encapsulated field

  // Public getter
  String get classType => _classType;

  Flight({
    required super.id,
    required super.origin,
    required super.destination,
    required super.basePrice,
    required String classType,
  }) : _classType = classType;

  @override
  void info() {
    print("✈️ Flight ID: $id, From: $origin To: $destination, "
        "Price: $basePrice, Class: $_classType");
  }
}

class Train extends Transportation {
  final String _coachType;  // Encapsulated field

  // Public getter
  String get coachType => _coachType;

  Train({
    required super.id,
    required super.origin,
    required super.destination,
    required super.basePrice,
    required String coachType,
  }) : _coachType = coachType;

  @override
  void info() {
    print("🚆 Train ID: $id | From $origin to $destination | "
        "Coach: $_coachType | Price: ₹$basePrice");
  }
}

class Bus extends Transportation {
  final String _busType;  // Encapsulated field

  // Public getter
  String get busType => _busType;

  Bus({
    required super.id,
    required super.origin,
    required super.destination,
    required super.basePrice,
    required String busType,
  }) : _busType = busType;

  @override
  void info() {
    print("🚌 Bus ID: $id | From $origin to $destination | "
        "Type: $_busType | Price: ₹$basePrice");
  }
}