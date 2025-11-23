// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import './ExportOwner.sol';

contract ImportOwner is ExportOwner {

    uint nombre;

    function setNombre(uint _nombre) public isOwner {
        nombre = _nombre;
    }

    function getNombre() public view isOwner returns(uint) {
        return nombre;
    }
}