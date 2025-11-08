// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Array {

    uint[] nombre;

    function addValue(uint _valeur) public {
        nombre.push(_valeur);
    }

    function updateValue(uint _valeur, uint _index) public {
        nombre[_index] = _valeur;
    }

    function deleteValue(uint _index) public {
        delete nombre[_index];
    }

    function getValue(uint _index) public view returns(uint) {
        return nombre[_index];
    }

    function getNombreX2() public view returns(uint [] memory) {
        uint longueur = nombre.length;
        uint[] memory nombreX2 = new uint[](longueur);
        for(uint i = 0; i < longueur; i++) {
            nombreX2[i] = nombre[i] * 2;
        }
        return nombreX2;
    }
}