class Source {
  String id;
  String name;

  // Constructor
  Source(
      {required this.id, required this.name}); // marking parameters as required

  // Factory method to map JSON
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
        id: json['id'] ?? "",
        name: json['name'] ?? ""); // providing default values
  }
}
