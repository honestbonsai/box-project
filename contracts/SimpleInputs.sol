// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;

contract SimpleInputs {
    event StorageSet(string _message);

    uint256 public storedData;
    int256 public storedInt;
    string public storedString;
    bool public storedBool;
    address public storedAddr;
    address payable public storedPayableAddr;
    bytes32 public storedBytes32;
    bytes1[] public storedByteArray;

    function setUint(uint256 x) public returns (uint256 x1) {
        storedData = x;

        emit StorageSet("Data stored successfully!");
        return (x);
    }

    function setInt(int256 y) public returns (int256 y1) {
        storedInt = y;

        emit StorageSet("Data stored successfully!");
        return (y);
    }

    function setString(string memory z) public returns (string memory z1) {
        storedString = z;

        emit StorageSet("Data stored successfully!");
        return (z);
    }

    function setBool(bool a) public returns (bool a1) {
        storedBool = a;

        emit StorageSet("Data stored successfully!");
        return (a);
    }

    function setAddr(address b) public returns (address b1) {
        storedAddr = b;

        emit StorageSet("Data stored successfully!");
        return (b);
    }

    function setPayableAddr(address payable c)
        public
        returns (address payable c1)
    {
        storedPayableAddr = c;

        emit StorageSet("Data stored successfully!");
        return (c);
    }

    function setBytes32(bytes32 d) public returns (bytes32 d1) {
        storedBytes32 = d;

        emit StorageSet("Data stored successfully!");
        return (d);
    }

    function setByteArray(bytes1[] memory e)
        public
        returns (bytes1[] memory e1)
    {
        storedByteArray = e;

        emit StorageSet("Data stored successfully!");
        return (e);
    }
}
