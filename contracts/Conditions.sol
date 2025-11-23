// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Conditions {

    uint nombre;
    uint countNumber = 10;
    uint count = 0;
    uint playCount = 10;
    bool isPaused;
    bool play = false;

    function setNombre(uint _nombre) public {
        if(_nombre == 5) {
            revert('Not possible !');
        } else {
            nombre = _nombre;
        }
    }

    function pauseContract() public {
        if(isPaused) {
            isPaused = false;
        } else {
            isPaused = true;
        }
    }

    function counter() public {
        for(uint i = 0 ; i < countNumber ; i++) {
            count++;
        } 
    }
}