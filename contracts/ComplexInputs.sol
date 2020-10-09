// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;

contract ComplexInputs {
    event StorageSet(string _message);

    uint256 public storedData;
    uint256 public storeduint1 = 15;

    bytes16 public string1 = "test1";
    bytes32 public string2 = "test1236";
    string public string3 = "lets string something";

    DeviceData[] public deviceDataArray;

    struct DeviceData {
        string deviceBrand;
        string deviceYear;
        string batteryWearLevel;
    }
    struct S_5 {
        bool[60] driver;
        bool alarm;
        uint104[][] firewall;
    }

    struct S_6 {
        bytes21[188] card;
        uint184[99][241] program;
        bytes12[128][194][] system;
        S_5 hardDrive;
        address[] monitor;
    }

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
        bytes32 string2andanotherone,
        DeviceData memory testStruct,
        DeviceData[][] memory testStructArray
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
        view
        returns (
            uint256 transactionIdForAddTransactionPublicFunction,
            string memory stringForAddTransactionPublicFunction,
            bool booleanForAddTransactionPublicFunction,
            int256 intTransactionIdForAddTransactionPublicFunction,
            DeviceData[] memory anArray
        )
    {
        return (
            0,
            stringForAddTransactionPublicFunction,
            false,
            1,
            deviceDataArray
        );
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

    function test(
        address[79] memory program,
        string[][2][122] memory capacitor,
        uint184[99][] memory programTwo,
        bool[4][194] memory systemTwo,
        S_6 memory microchip
    ) public pure returns (bool[4][194][] memory test) {
        return (test);
    }
}
