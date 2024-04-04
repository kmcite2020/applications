import 'package:states_rebuilder/states_rebuilder.dart';

import '../../main.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer.raw({
    required final String customerID,
    @Default('') final String name,
    required final String city,
    @Default(false) final bool editing,
    @Default(<String>[]) final List<String> products,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  factory Customer.id(String custmerID) => customersRM().cache[custmerID]!;
  factory Customer() {
    return Customer.raw(
      customerID: randomID,
      city: cities.first,
    );
  }
}

extension InjectedExtensions<T> on Injected<T> {
  T get([T? _state]) => _state != null ? state = _state : state;
}

@freezed
class Customers with _$Customers {
  const factory Customers({
    @Default(<String, Customer>{}) final Map<String, Customer> cache,
  }) = _Customers;
  $CustomersCopyWith<Customers> get call => copyWith;
  static final fromJson = _$CustomersFromJson;
}

final customersRM = CustomersRM();

class CustomersRM {
  final customersRM = RM.inject<Customers>(
    () => const Customers(),
    persist: () => PersistState(
      key: 'customers',
      fromJson: (json) => Customers.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s.toJson()),
    ),
  );
  late final call = customersRM.get;
}

class CustomersList {
  final call = customersRM.call().cache.values.toList();
  final addCustomer = (Customer customer) {
    customersRM.call(
      customersRM.call().call(),
    );
    return themeMode;
  };
}

List<Customer> get customers => customersRM().cache.values.toList();

set customersState(Customers _) => customersRM(_);
Customer getCustomerByID(String id) => customersRM().cache[id]!;

void setCustomer(Customer customer) {
  customersRM(
    customersRM().copyWith(
      cache: Map.of(customersRM().cache)..[customer.customerID] = customer,
    ),
  );
}

void removeCustomer(String customerID) {
  customersRM(
    customersRM().copyWith(
      cache: Map.of(customersRM().cache)..remove(customerID),
    ),
  );
}

mixin RemoveCustomerRM on CustomersRM {
  void removeCustomer(Customer customer) {
    this.call;
  }
}

final clearAllCustomersRM = ClearAllCustomersRM();

class ClearAllCustomersRM {
  void call() => customersState = Customers();
}
