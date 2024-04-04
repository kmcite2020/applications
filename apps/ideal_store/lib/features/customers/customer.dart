import '../../main.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@serializable
@freezed
class Customer with _$Customer {
  const factory Customer.raw({
    required final String customerID,
    @Default('') final String name,
    required final String city,
    @Default(false) final bool editing,
    @Default(<String>[]) final List<String> products,
  }) = _Customer;

  static final fromJson = _$CustomerFromJson;

  factory Customer.id(String custmerID) => customersRM().cache[custmerID]!;
  factory Customer() {
    return Customer.raw(
      customerID: randomID,
      city: cities.first,
    );
  }
}

@serializable
@freezed
class Customers with _$Customers {
  const factory Customers({
    @Default(<String, Customer>{}) final Map<String, Customer> cache,
  }) = _Customers;
  static final fromJson = _$CustomersFromJson;
}

final customersRM = CustomersRM();

class CustomersRM extends Manager<Customers> {
  @override
  final initialState = Customers();

  void saveCustomer(Customer customer) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[customer.customerID] = customer,
    );
  }

  void deleteCustomer(String customerID) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(customerID),
    );
  }

  void deleteAllCustomers() => state = initialState;

  Customer? getByID(String customerID) => state.cache[customerID];
}
