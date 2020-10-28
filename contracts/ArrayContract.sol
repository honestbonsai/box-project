// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.7.0;
pragma experimental ABIEncoderV2;

contract ArrayContract {
    uint256[2**20] m_aLotOfIntegers;
    // Note that the following is not a pair of dynamic arrays but a
    // dynamic array of pairs (i.e. of fixed size arrays of length two).
    // Because of that, T[] is always a dynamic array of T, even if T
    // itself is an array.
    // Data location for all state variables is storage.
    bool[2][] m_pairsOfFlags;
    string[2][] m_pairsOfStrings;

    // newPairs is stored in memory - the only possibility
    // for public contract function arguments
    function setAllFlagPairs(bool[2][] memory newPairs) public {
        // assignment to a storage array performs a copy of ``newPairs`` and
        // replaces the complete array ``m_pairsOfFlags``.
        m_pairsOfFlags = newPairs;
    }

    struct StructType {
        uint256[] contents;
        uint256 moreInfo;
    }
    StructType s;

    function f(uint256[] memory c) public returns (StructType memory) {
        // stores a reference to ``s`` in ``g``
        StructType storage g = s;
        // also changes ``s.moreInfo``.
        g.moreInfo = 2;
        // assigns a copy because ``g.contents``
        // is not a local variable, but a member of
        // a local variable.
        g.contents = c;
        return g;
    }

    function setFlagPair(
        uint256 index,
        bool flagA,
        bool flagB
    ) public {
        // access to a non-existing index will throw an exception
        m_pairsOfFlags[index][0] = flagA;
        m_pairsOfFlags[index][1] = flagB;
    }

    function setFlagPairFn(function() external setNewFlagPair) public {
        // access to a non-existing index will throw an exception
        setNewFlagPair();
    }

    function setAllFlagPairs(string[2][] memory newPairs) public {
        // assignment to a storage array performs a copy of ``newPairs`` and
        // replaces the complete array ``m_pairsOfFlags``.
        m_pairsOfStrings = newPairs;
    }

    function changeFlagArraySize(uint256 newSize) public {
        // if the new size is smaller, removed array elements will be cleared
        m_pairsOfFlags.length = newSize;
    }

    function clear() public {
        // these clear the arrays completely
        delete m_pairsOfFlags;
        delete m_aLotOfIntegers;
        // identical effect here
        m_pairsOfFlags.length = 0;
    }

    bytes m_byteData;

    function byteArrays(bytes memory data) public {
        // byte arrays ("bytes") are different as they are stored without padding,
        // but can be treated identical to "uint8[]"
        m_byteData = data;
        m_byteData.length += 7;
        m_byteData[3] = 0x08;
        delete m_byteData[2];
    }

    function addFlag(bool[2] memory flag) public returns (uint256) {
        return m_pairsOfFlags.push(flag);
    }

    function createMemoryArray(uint256 size)
        public
        pure
        returns (bytes memory)
    {
        // Dynamic memory arrays are created using `new`:
        uint256[2][] memory arrayOfPairs = new uint256[2][](size);

        // Inline arrays are always statically-sized and if you only
        // use literals, you have to provide at least one type.
        arrayOfPairs[0] = [uint256(1), 2];

        // Create a dynamic byte array:
        bytes memory b = new bytes(200);
        for (uint256 i = 0; i < b.length; i++) b[i] = bytes1(uint8(i));
        return b;
    }
}
