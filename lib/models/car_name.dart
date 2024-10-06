class CarName {
  final String name;
  final int index;
  bool isActif;

  
  CarName({
    required this.name,
    required this.index,
    required this.isActif,
  
  });

  void setIsActif(bool isActif) {
    isActif = isActif;
  }
}