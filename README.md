# Dart: Assuming JSON response without checking

This example demonstrates a common error in Dart when fetching data from an API: assuming the response is always valid JSON without proper checks.  The `fetchData` function doesn't verify the `Content-Type` header or handle potential `FormatException` if the response body is not valid JSON.  This can lead to runtime errors and unexpected app behavior.

The solution provides improved error handling and content type validation for robustness.