// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public myfavouriteNumber = 8;

    //struct
    struct Person {
        uint256 favouriteNumber;
        string name;
    }
       //dynamic array
    Person[] public listOfPeople;

     //mapping
     mapping(string => uint256) public nametoFavouriteNum;

  

    function addToList(uint256 _favouriteNumber, string memory _name) public{
        listOfPeople.push(Person(_favouriteNumber, _name));
        nametoFavouriteNum[_name] = _favouriteNumber;
    }


    function store(uint256 _myfavouriteNumber) public  virtual {
        myfavouriteNumber = _myfavouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myfavouriteNumber;
    }
}

    