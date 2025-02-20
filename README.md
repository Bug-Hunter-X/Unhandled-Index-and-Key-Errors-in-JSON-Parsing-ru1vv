# Dart JSON Parsing Bug: Handling Index and Key Errors

This repository demonstrates a common error in Dart code that involves parsing JSON data and handling potential exceptions. The `bug.dart` file contains code that attempts to access elements from a JSON list without proper checks, potentially causing `RangeError` or `NoSuchMethodError` exceptions. The `bugSolution.dart` file provides an improved version with robust error handling and index/key validation.

## Bug Description

The original code lacks proper error handling when parsing a JSON response, specifically not considering the following scenarios:

* **IndexOutOfRangeException**: Attempting to access a list element with an index that is out of bounds.
* **NoSuchMethodError**: Attempting to access a non-existent key in a map.
* **Non-200 HTTP Status**:  The API request does not return a success code (200).
* **Invalid JSON Response**: The API returns a response that is not valid JSON.

The improved code addresses these issues by implementing checks and using try-catch blocks for exception handling. 