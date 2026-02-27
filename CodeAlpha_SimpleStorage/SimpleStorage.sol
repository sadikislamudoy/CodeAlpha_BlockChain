// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // Declare a public integer variable to store the value [cite: 25]
    // Making it 'public' automatically creates a read function [cite: 28]
    int256 public storedValue;

    // Function to increase the value by 1 [cite: 26]
    function increment() public {
        storedValue += 1;
    }

    // Function to decrease the value by 1 [cite: 27]
    function decrement() public {
        storedValue -= 1;
    }

    // Explicit read function (optional, since the variable is public) [cite: 28]
    function getValue() public view returns (int256) {
        return storedValue;
    }
}