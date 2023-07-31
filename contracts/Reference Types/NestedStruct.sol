// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MyContract {
    struct kyc{
        uint id;
        string firstName;
        string lastName;
        addressDetails location;
    }
    struct addressDetails{
        string buildingName;
        string street;
        string state;
        uint pinCode;
    }

    kyc customer;

    function newCustomer(
        uint id,
        string memory firstName,
        string memory lastName,
        string memory buildingName,
        string memory street,
        string memory state,
        uint pinCode
        ) public {
        customer=kyc(id,firstName,lastName,addressDetails(buildingName,street,state,pinCode));
    }
    function  showCustomer() public  view returns (
        uint, 
        string memory, 
        string memory, 
        string memory, 
        string memory, 
        string memory,
        uint ) {
        return (
            customer.id, 
            customer.firstName, 
            customer.lastName, 
            customer.location.buildingName, 
            customer.location.street, 
            customer.location.state,
            customer.location.pinCode );
    }
}