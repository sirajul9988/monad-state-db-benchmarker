// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title StateStorageTestbed
 * @dev Provides a clean smart contract interface with heavy storage maps to test indexers.
 */
contract StateStorageTestbed {
    
    mapping(uint256 => bytes32) public benchmarkRegistry;
    uint256 public nextIndex;

    event EntriesPopulated(uint256 startingIndex, uint256 count);

    /**
     * @notice Generates multiple state records to populate test databases.
     */
    function seedStateRecords(uint256 volume) external {
        uint256 start = nextIndex;
        for (uint256 i = 0; i < volume; i++) {
            benchmarkRegistry[start + i] = keccak256(abi.encodePacked(block.timestamp, start, i));
        }
        nextIndex = start + volume;
        emit EntriesPopulated(start, volume);
    }
}
