// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract StudentManager {

    address owner;

    struct Grade {
        string subject;
        uint grade;
    }

    struct Student {
        string firstname;
        string lastname;
        uint numberOfGrades;
        mapping(uint => Grade) grades;
    }

    mapping(address => Student) students;

    constructor() {
        owner = msg.sender;
    }

    function addStudent(address _studentAddress, string memory _firstname, string memory _lastname) public {
        require(msg.sender == owner, "Not the owner");
        bytes memory firstnameOfTheAddress = bytes(students[_studentAddress].firstname);
        require(firstnameOfTheAddress.length == 0, "Existe deja");
        students[_studentAddress].firstname = _firstname;
        students[_studentAddress].lastname = _lastname; 
    }

    function addGrade(address _studentAddress, uint _grade, string memory _subject) public {
        require(msg.sender == owner, "Not the owner");
        bytes memory firstnameOfTheAddress = bytes(students[_studentAddress].firstname);
        require(firstnameOfTheAddress.length > 0, "Il faut creer l'eleve");
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].grade = _grade;
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].subject = _subject;
        students[_studentAddress].numberOfGrades++;
    }

    function getGrades(address _studentAddress) public view returns(uint[] memory) {
        require(msg.sender == owner, "Not the owner");
        uint numberGradesOfThisStudent = students[_studentAddress].numberOfGrades;
        uint[] memory grades = new uint[](numberGradesOfThisStudent);
        for(uint i = 0 ; i < numberGradesOfThisStudent ; i++) {
            grades[i] = students[_studentAddress].grades[i].grade;
        }
        return grades;
    }
}