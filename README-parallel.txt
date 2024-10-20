FUNCTION : parallel()

The parallel function computes the parallel connection of two linear time-invariant (LTI) systems represented by their transfer functions. This function is particularly useful in control systems and signal processing applications where multiple systems operate simultaneously.

**Parameters**

sys1: Transfer function of the first system. Must be a valid Scilab LTI system object.
sys2: Transfer function of the second system. Must also be a valid Scilab LTI system object.

**Input Types**
The function accepts two inputs of type syslin (linear systems) that represent the transfer functions of the systems to be connected in parallel.

**Returns**
sys: The resulting transfer function of the parallel connection of sys1 and sys2.

**Test Cases**
Test Case 1:
System 1 : 1/(s + 1)
System 2 : 1/(s + 2)
Result   : 1/(s^2 + 3s + 2)


Test Case 2:
System 1 : 1/(s^2 + 3s +2)
System 2 : 1/(s^2 + 2s +1)
Result   : 1/(s^4 + 5s^3 + 9s^2 + 7s + 2)

Test Case 3:
System 1 : 1/(s)
System 2 : 1/(s + 3)
Result   : 1/(s^2 + 3s)

If the number of arguments is not equal to 2,then the function will raise an error message.




