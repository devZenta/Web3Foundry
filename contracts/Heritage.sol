// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Owner {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
}

contract Modifier is Owner {

    uint nombre;

    function setNombre(uint _nombre) public isOwner {
        nombre = _nombre;
    }

    function getNombre() public view isOwner returns(uint) {
        return nombre;
    }
}