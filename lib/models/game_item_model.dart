class GameItemModel {
  final int id;
  String selection;
  bool isEditable;

  GameItemModel(
      {required this.id, this.selection = '', this.isEditable = true});

  @override
  bool operator ==(other) {
    return (other is GameItemModel) && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

}
