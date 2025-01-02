# Overly Generic Catch Blocks in Dart

This repository demonstrates a common error in Dart: using overly generic `catch` blocks in exception handling.  While such blocks might seem convenient at first, they make debugging significantly harder.  The example shows a function `fetchData` that attempts to fetch data asynchronously. It handles potential errors using `catch` blocks, with improved solutions offering more specific exception handling for better error identification and reporting.

## Bug

The `bug.dart` file shows an example of using a very generic `catch` block. This obscures the actual error type, making it more challenging to pinpoint the issue and fix it effectively. 

## Solution

The `bugSolution.dart` file presents a corrected version of `fetchData` that utilizes more specific `catch` blocks, each handling a particular exception type, such as `TimeoutException` or `Exception`.  This allows for better error reporting and more targeted debugging.
