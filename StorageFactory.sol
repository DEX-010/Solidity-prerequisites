//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
// pragma solidity >=0.8.0 <0.9.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    //Creating an array of the contract type
    SimpleStorage[] public List_of_SimpleStorage;

    function create_Simple_storage() public{
        //Declaration of the variable, Instatiating a new contract
        SimpleStorage newsimplestorage =new SimpleStorage();
        //Populating the existing array with the new contract
        List_of_SimpleStorage.push(newsimplestorage);


    }
    function sfstore(uint256 _contract_list_index, uint256 number) public{
        SimpleStorage mycontractcontent = List_of_SimpleStorage[_contract_list_index];
        mycontractcontent.store(number);
    }

    function get_contract(uint256 number) public view returns(uint256){
        SimpleStorage mycontractcontent= List_of_SimpleStorage[number];
        return mycontractcontent.retrieve();

    }
    }
    
    
