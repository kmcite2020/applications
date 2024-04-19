import 'package:ideal_store/main.dart';

class CustomerBuilder extends UI {
  const CustomerBuilder({
    super.key,
    required this.custmerID,
    required this.builder,
  });
  final String custmerID;
  final Widget Function(Customer customer) builder;

  @override
  Widget build(BuildContext context) => builder(
        customersRM.get(custmerID),
      );
}
