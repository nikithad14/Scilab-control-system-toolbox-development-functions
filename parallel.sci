// Function to compute the parallel connection of two systems
function sys = parallel(sys1, sys2)

    // Check if exactly two arguments are provided
    if argn(2) == 2 then
        // Compute the parallel connection by adding the two systems
        sys = sys1 + sys2;
    else
        // Raise an error if the number of input arguments is incorrect
        error("Incorrect number of input arguments.");
    end

endfunction

// Define the Laplace variable 's'
s = poly(0, 's');

// Define the first-order system sys1: 1/(s + 1)
sys1 = syslin('c', 1/(s + 1));  // Create a continuous-time system

// Define the second first-order system sys2: 1/(s + 2)
sys2 = syslin('c', 1/(s + 2));  // Create another continuous-time system

// Combine sys1 and sys2 in parallel using the parallel function
sys_parallel = parallel(sys1, sys2);

// Display the resulting parallel system
disp(sys_parallel);
