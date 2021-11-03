class PeriodicTableElement {
  String name;
  String? appearance;
  double? atomicMass;
  int? atomicNumber;
  double? boil;
  String? category;
  String? electronConfig;
  double? melt;
  double? molarHeat;
  String? namedBy;
  String? phase;
  String? summary;
  String symbol;

  PeriodicTableElement({
    required this.name,
    required this.appearance,
    required this.atomicMass,
    required this.atomicNumber,
    required this.boil,
    required this.category,
    required this.electronConfig,
    required this.melt,
    required this.molarHeat,
    required this.namedBy,
    required this.phase,
    required this.summary,
    required this.symbol,
  });

  PeriodicTableElement.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        appearance = json['appearance'],
        atomicMass = json['atomic_mass'] != null
            ? double.parse(json['atomic_mass'].toString())
            : null,
        boil =
            json['boil'] != null ? double.parse(json['boil'].toString()) : null,
        category = json['category'],
        melt =
            json['melt'] != null ? double.parse(json['melt'].toString()) : null,
        molarHeat = json['molar_heat'] != null
            ? double.parse(json['molar_heat'].toString())
            : null,
        namedBy = json['named_by'],
        atomicNumber = json['number'],
        phase = json['phase'],
        summary = json['summary'],
        symbol = json['symbol'],
        electronConfig = json['electron_configuration'];
}
