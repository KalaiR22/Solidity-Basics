// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorage;

    function CreateSimpleStorage() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorageContract);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        listOfSimpleStorage[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public  view  returns(uint256) {
        return listOfSimpleStorage[_simpleStorageIndex].retrieve();
        
    }
}