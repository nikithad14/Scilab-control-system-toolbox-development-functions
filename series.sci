// Function to compute series connection of two systems
function resultingSystem = series(systemMatrix1, systemMatrix2, outputSelector1, inputSelector2)
    // Validate input arguments
    if nargin == 2
        // Simple series connection
        resultingSystem = systemMatrix2 * systemMatrix1;
    elseif nargin == 4
        // Series connection with output and input selection
        
        // Get dimensions of system matrices
        [rowCount1, columnCount1] = size(systemMatrix1);
        [rowCount2, columnCount2] = size(systemMatrix2);
        
        // Validate output and input selectors
        if ~isreal(outputSelector1)
            error("Output selector 1 must be real numbers.");
        end
        if ~isreal(inputSelector2)
            error("Input selector 2 must be real numbers.");
        end
        
        // Check selector lengths
        if length(outputSelector1) ~= length(inputSelector2)
            error("Selector lengths must match.");
        end
        
        // Validate selector values
        for i = 1:length(outputSelector1)
            if outputSelector1(i) < 1 || outputSelector1(i) > rowCount1
                error("Output selector 1 index out of range.");
            end
            if inputSelector2(i) < 1 || inputSelector2(i) > columnCount2
                error("Input selector 2 index out of range.");
            end
        end
        
        // Create scaling matrices
        outputScaler = zeros(length(outputSelector1), rowCount1);
        inputScaler = zeros(columnCount2, length(inputSelector2));
        
        for i = 1:length(outputSelector1)
            outputScaler(i, outputSelector1(i)) = 1;
            inputScaler(inputSelector2(i), i) = 1;
        end
        
        // Compute resulting system
        resultingSystem = systemMatrix2 * inputScaler * outputScaler * systemMatrix1;
    else
        error("Invalid number of input arguments. Use 2 or 4 arguments.");
    end
endfunction

// User input section
disp("Enter dimensions for system 1:");
rowCount1 = input("Number of rows for system 1: ");
columnCount1 = input("Number of columns for system 1: ");
systemMatrix1 = zeros(rowCount1, columnCount1);

for i = 1:rowCount1
    for j = 1:columnCount1
        systemMatrix1(i, j) = input(sprintf("Enter element [%d, %d] for system 1: ", i, j));
    end
end

disp("Enter dimensions for system 2:");
rowCount2 = input("Number of rows for system 2: ");
columnCount2 = input("Number of columns for system 2: ");
systemMatrix2 = zeros(rowCount2, columnCount2);

for i = 1:rowCount2
    for j = 1:columnCount2
        systemMatrix2(i, j) = input(sprintf("Enter element [%d, %d] for system 2: ", i, j));
    end
end

// Ask user if they want to specify output and input selectors
useSelectors = input("Do you want to specify output and input selectors? (1 for Yes, 0 for No): ");

if useSelectors
    outputSelector1 = zeros(rowCount1, 1);
    inputSelector2 = zeros(columnCount2, 1);

    disp("Specify output indices for system 1 (1 to row count):");
    for i = 1:rowCount1
        outputSelector1(i) = input(sprintf("Output index %d: ", i));
    end

    disp("Specify input indices for system 2 (1 to column count):");
    for i = 1:columnCount2
        inputSelector2(i) = input(sprintf("Input index %d: ", i));
    end

    // Call the series function with selectors
    resultingSystem = series(systemMatrix1, systemMatrix2, outputSelector1, inputSelector2);
else
    // Call the series function without selectors
    resultingSystem = series(systemMatrix1, systemMatrix2);
end

disp("Resulting system:");
disp(resultingSystem);
