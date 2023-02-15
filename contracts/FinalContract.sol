//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract FinalContract {
    uint256 public Number;

    // public variable to store a number

    // function to set the number
    function setNumber(uint256 _number) public {
        require(_number > 0, "Number must be greater than zero."); // require input number to be greater than 0
        Number = _number; // update myNumber with the input number
    }

    // function to double the number
    function doubleNumber() public {
        uint256 oldNumber = Number; // store the current value of myNumber
        Number = Number * 2; // double the value of myNumber
        assert(Number >= oldNumber); // assert that myNumber has increased or stayed the same
        // the assert function will revert all changes made to the state if it fails
    }

    // function to divide the number by a given divisor
    function divideNumber(uint256 _divisor) public {
        require(_divisor != 0, "Cannot divide by zero."); // require the divisor to not be 0
        uint256 oldNumber = Number; // store the current value of myNumber
        Number = Number / _divisor; // divide myNumber by the input divisor
        if (Number < oldNumber) {
            revert("Result is smaller than original number."); // if the result is smaller than the original number, revert and return an error message
            // the revert function will undo all changes made to the state and return an error message
        }
    }
}
