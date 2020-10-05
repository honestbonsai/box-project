// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract ComplexInputs {
    event StorageSet(string _message);

    uint256 public storedData;
    uint256 public storeduint1 = 15;

    bytes16 public string1 = "test1";
    bytes32 public string2 = "test1236";
    string public string3 = "lets string something";

    constructor() public {
        string memory string4 = "hello";
    }

    function set(uint256 x) public {
        storedData = x;

        emit StorageSet("Data stored successfully!");
    }

    /* Long parameter and return variable names */
    // Function with long parameter names
    function longParameterNames(
        uint256 x,
        uint256 storeduint1letsmakethisareallylongnameyay,
        bytes16 string1yayanotherlongname,
        bytes32 string2andanotherone
    )
        public
        view
        returns (
            uint256,
            uint256,
            bytes16,
            bytes32
        )
    {
        return (storedData, storeduint1, string1, string2);
    }

    // Function with long parameter names & no return parameters
    function longParameterNamesNoReturnParameters(
        uint256 x,
        uint256 storeduint1letsmakethisareallylongnameyay,
        bytes16 string1yayanotherlongname,
        bytes32 string2andanotherone
    ) public {
        storedData = x;
    }

    // Function with long return variable names
    function longReturnParameterNames(uint256)
        public
        pure
        returns (
            uint256 transactionIdForAddTransactionPublicFunction,
            string memory stringForAddTransactionPublicFunction,
            bool booleanForAddTransactionPublicFunction,
            int256 intTransactionIdForAddTransactionPublicFunction
        )
    {
        return (0, stringForAddTransactionPublicFunction, false, 1);
    }

    // Function with long parameter and return variable names
    function longParameterAndReturnParameterNames(
        address destinationAddressForAddTransactionPublicFunction,
        uint256 valueUint256ForAddTransactionPublicFunction,
        bytes memory dataBytesForAddTransactionPublicFunction,
        bytes32 someMoreBytesForAddTransactionPublicFunction,
        address destinationAddressForAddTransactionPublicFunction1,
        uint256 valueUint256ForAddTransactionPublicFunction1,
        bytes memory dataBytesForAddTransactionPublicFunction1,
        bytes32 someMoreBytesForAddTransactionPublicFunction1
    )
        public
        pure
        returns (
            uint256 transactionIdForAddTransactionPublicFunction,
            string memory stringForAddTransactionPublicFunction,
            bool booleanForAddTransactionPublicFunction,
            int256 intTransactionIdForAddTransactionPublicFunction,
            uint256 transactionIdForAddTransactionPublicFunction1,
            string memory stringForAddTransactionPublicFunction1,
            bool booleanForAddTransactionPublicFunction1,
            int256 intTransactionIdForAddTransactionPublicFunction1
        )
    {
        return (
            0,
            stringForAddTransactionPublicFunction,
            false,
            1,
            0,
            stringForAddTransactionPublicFunction,
            false,
            1
        );
    }
}
