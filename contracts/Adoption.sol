pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    // Adopting a Pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}