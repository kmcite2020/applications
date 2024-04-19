import '../../main.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    @Default('') final String customerID,
    @Default('') final String name,
    required final String city,
    @Default(false) final bool editing,
    @Default(<String>[]) final List<String> products,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

final customersRM = ComplexTable(
  'customers',
  fromJson: Customer.fromJson,
);
