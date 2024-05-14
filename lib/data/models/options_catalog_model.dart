class OptionCatalogModel {
  final int id;
  final String value;

  const OptionCatalogModel({required this.id, required this.value});

  const OptionCatalogModel.empty() : this(
    id: 0,
    value: ''
  );
}