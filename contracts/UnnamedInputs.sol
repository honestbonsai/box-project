// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;

contract UnnamedInputs {
    event StorageSet(string _message);

    function unnamedParameter(uint256) public {
        emit StorageSet("Data stored successfully!");
    }

    function unnamedArrayParameter(uint256[1] memory) public {
        emit StorageSet("Data stored successfully!");
    }

    function multipleUnnamedParameters(uint256, uint256) public {
        emit StorageSet("Data stored successfully!");
    }

    function multipleUnnamedArrayParameters(
        uint256[1] memory,
        uint256[1] memory
    ) public {
        emit StorageSet("Data stored successfully!");
    }

    function multipleMixedUnnamedParameters(uint256[1] memory, uint256) public {
        emit StorageSet("Data stored successfully!");
    }

    function mixedNamedAndUnnamedParameters(uint256[1] memory, uint256 x)
        public
    {
        emit StorageSet("Data stored successfully!");
    }

    function mixedNamedAndUnnamedParameters2(uint256[1] memory x, uint256)
        public
    {
        emit StorageSet("Data stored successfully!");
    }
}
