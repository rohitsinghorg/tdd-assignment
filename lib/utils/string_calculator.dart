///
/// [StringCalculator] class is used to handle operations related to the
/// calculator.
///
class StringCalculator {
  /// Test Case 1: Create a simple String calculator with a method signature like this:
  /// Method [add] is used find out the numbers available in the input and
  /// perform the add operation on them. If the input is empty, then the result
  /// will be 0, else return the same input.
  static int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    return int.parse(numbers);
  }
}
