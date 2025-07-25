# TDD Assignment
## _Made for Incubyte_

In this assignment, we will write down the test cases for "String Calculator TDD Kata" by keeping the below points in mind:

- Host your solution on a public GitHub/GitLab repository.
- Follow best practices for TDD. Watch this video to understand TDD better.
- Commit your changes frequently, ideally after every change to show how your code evolves with every step of TDD.
- We encourage you to use the programming language and tools best suited for the role you are applying for.
- Do not rush, take your time. We want to see your best work!
- Send us the link to your repo once you’re happy with what you have done, make sure to include screenshots and other relevant information.

## Features

- Input a comma-separated numbers for signature `int add(string numbers)`
- Output: an integer, sum of the numbers

## Tech

I have used Flutter to write down the test-cases:

- [Flutter](https://flutter.dev) - An open-source platform for multi-platform solutions!
- [Dart](https://dart.dev/) - Dart is the programming language we used in Flutter.

And of course in this repository, we have used the Dart programming language to write down the test-cases.

## Installation

TDD Assignment requires [Flutter](https://flutter.dev/) to run.

## Plugins

TDD Assignment is currently dependent with the following plugins.

| Plugin | README |
| ------ | ------ |
| test | https://pub.dev/packages/test |

## Development

To use the method signature `int add(string numbers)`, I have created a file under `lib>utils` with name as `string_calculator.dart`.

To see the development, we need to go to `test` directory. Under `test` directory, we have a file named `unit_test.dart`.

Open your Terminal and run these commands.

```sh
flutter test
```

#### Result for Initial Test Case

As we are considering:
> Support different delimiters:
- To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]". For example, "//;\n1;2" where the delimiter is ";" should return 3.

I have written down the test case as:

```dart
test('Supports custom delimiter', () {
    expect(StringCalculator.add("//;\n1;2"), 3);
  });
```

Output:

```
  00:00 +4: All tests passed!   
```

## License

MIT