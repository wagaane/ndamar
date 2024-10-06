class Publication {
  final String id;
  final String marque;
  final String prix;
  final int annee;
  final String carburant;
  final String transmission;
  final String datePublication;
  final String img_url;
  bool isAvailable;

  Publication({
    required this.id,
    required this.marque,
    required this.prix,
    required this.annee,
    required this.carburant,
    required this.transmission,
    required this.datePublication,
    required this.img_url,
    this.isAvailable = true,
  });

  void setAvailability(bool availability) {
    isAvailable = availability;
  }
}