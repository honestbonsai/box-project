// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract ComplexInputs {
    event StorageSet(string _message);

    uint256 public storedData;
    uint256 public storeduint1 = 15;

    bytes16 public string1 = "test1";
    bytes32 public string2 = "test1236";
    string public string3 = "lets string something";

    function set(uint256 x) public {
        storedData = x;

        emit StorageSet("Data stored successfully!");
    }

    function setAllData(
        uint256 x,
        uint256 storeduint1letsmakethisareallylongnameyay,
        bytes16 string1yayanotherlongname,
        bytes32 string2andanotherone
    )
        public
        returns (
            uint256 x,
            uint256 storeduint1letsmakethisareallylongnameyay,
            bytes16 string1yayanotherlongname,
            bytes32 string2andanotherone
        )
    {
        storedData = x;
        storeduint1 = storeduint1letsmakethisareallylongnameyay;
        string1 = string1yayanotherlongname;
        string2 = string2andanotherone;

        return (storedData, storeduint1, string1, string2);
    }
}
