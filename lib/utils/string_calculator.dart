///
/// [StringCalculator] class is used to handle operations related to the
/// calculator.
///
class StringCalculator {
  /// Test Case 1: Create a simple String calculator with a method signature like this:
  /// Method [add] is used find out the numbers available in the input and
  /// perform the add operation on them. If the input is empty, then the result
  /// will be 0, else return the same input.
  // static int add(String numbers) {
  //   if (numbers.isEmpty) {
  //     return 0;
  //   }
  //   return int.parse(numbers);
  // }

  /// Test Case 2: Allow the method to handle any amount of numbers and generate
  /// the result by adding each number.
  // static int add(String numbers) {
  //   if (numbers.isEmpty) return 0;
  //   final List<String> parts = numbers.split(',');
  //   return parts.map(int.parse).reduce((a, b) => a + b);
  // }

  /// Test Case 3: Allow the method to handle new line delimiters.
  // static int add(String numbers) {
  //   if (numbers.isEmpty) return 0;
  //   final replacedSet = numbers.replaceAll('\n', ',');
  //   final List<String> parts = replacedSet.split(',');
  //   return parts.map(int.parse).reduce((a, b) => a + b);
  // }

  /// Test Case 4: Support different delimiters. For example,
  ///  "//;\n1;2" where the delimiter is ";" should return 3.
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;
    String delimiter = ',';
    if (numbers.startsWith('//')) {
      final delimiterEnd = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEnd);
      numbers = numbers.substring(delimiterEnd + 1);
    }

    final replacedSet = numbers.replaceAll('\n', delimiter);
    final parts = replacedSet.split(delimiter);
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
