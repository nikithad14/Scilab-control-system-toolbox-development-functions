FUNCTION : series()

This Scilab function computes the series connection of two systems represented by matrices. It can handle both simple series connections and those with specified output and input selectors.

**Parameters**
systemMatrix1: A numeric matrix representing the first system.
systemMatrix2: A numeric matrix representing the second system.
outputSelector1 (optional): A vector of indices specifying which outputs to select from systemMatrix1.
inputSelector2 (optional): A vector of indices specifying which inputs to select from systemMatrix2.

**Input Types**

systemMatrix1:
Type: Numeric Matrix
Description: The matrix representing the first system.
Example: A 2x2 matrix such as [[1, 2], [3, 4]].

systemMatrix2:
Type: Numeric Matrix
Description: The matrix representing the second system.
Example: A 2x2 matrix such as [[5, 6], [7, 8]].

outputSelector1 (optional):
Type: Numeric Vector
Description: Indices of the outputs to select from systemMatrix1.
Example: A vector such as [1, 2] to select all outputs.

inputSelector2 (optional):
Type: Numeric Vector
Description: Indices of the inputs to select from systemMatrix2.
Example: A vector such as [1, 2] to select all inputs.

**Usage**
Simple Series Connection:

When only systemMatrix1 and systemMatrix2 are provided, the function computes the resulting system as:
resultingSystem = series(systemMatrix1, systemMatrix2);

Series Connection with Selectors:

When all four parameters are provided, the function computes the resulting system considering the specified output and input selectors:
resultingSystem = series(systemMatrix1, systemMatrix2, outputSelector1, inputSelector2);

**Test Cases**
Test Case 1: Simple Series Connection
Input:
systemMatrix1 = [[1, 2], [3, 4]]
systemMatrix2 = [[5, 6], [7, 8]]
Output:
resultingSystem = [[23, 34], [31, 46]]

Test Case 2: Series Connection with Selectors
Input:
systemMatrix1 = [[1, 2], [3, 4]]
systemMatrix2 = [[5, 6], [7, 8]]
outputSelector1 = [1, 2]
inputSelector2 = [1, 2]
Output:
resultingSystem = [[23, 34], [31, 46]]

Test Case 3: Error Handling
Input:
outputSelector1 = [0] // Invalid index
Output:
Error: Output selector 1 index out of range.