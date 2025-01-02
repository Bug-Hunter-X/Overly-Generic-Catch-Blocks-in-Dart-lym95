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
  } on Exception catch (e) {
    // This is a very generic catch block
    print('An error occurred: $e');
  } catch (e) {
    //This catch block catches all other exceptions
    print('An unknown error occurred: $e');
  }
}

void main() async {
  await fetchData();
}
```