// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract VariableType {

    uint nombre;
    bool monBool;
    address monAdresse;
    string maPhrase;

    function getNombre() public view returns (uint) {
        return nombre;
    }

    function setNombre(uint _nombre) public {
        nombre = _nombre;
    }

    function getBool() public view returns (bool) {
        return monBool;
    }

    function setBool(bool _monBool) public {
        monBool = _monBool;
    }

    function getAddress() public view returns (address) {
        return monAdresse;
    }

    function setAddress(address _monAdresse) public {
        monAdresse = _monAdresse;
    }

    function getString() public view returns (string memory) {
        return maPhrase;
    }

    function setString(string memory _maPhrase) public {
        maPhrase = _maPhrase;
    }
}