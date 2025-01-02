```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might fail
    await Future.delayed(Duration(seconds: 2));
    // throw Exception('Network error'); // Uncomment to simulate an error
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on FormatException catch (e) {
    print('Format error: $e');
  } on Exception catch (e) {
    print('Specific error occurred: $e');
  } catch (e) {
    //This catch block catches all other exceptions
    print('An unknown error occurred: $e');
    // Consider logging the error here for more advanced debugging
  }
}

void main() async {
  await fetchData();
}
```