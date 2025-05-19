// SPDX-License-Identifier: MIT
// question 2:- Write a contract that manages a list of student records (name, roll number). Allow adding and retrieving student data.

pragma solidity ^0.8.0;

contract StudentRecords {
    struct Student {
        string name_of_student;
        uint rollNumber;
    }

    Student[] public students;

    function addStudent(string memory _name, uint _rollNumber) public {
        students.push(Student(_name, _rollNumber));
    }

    function get_Student_data(uint index) public view returns (string memory, uint) {
        require(index < students.length, "Invalid index");
        Student memory s = students[index];
        return (s.name_of_student, s.rollNumber);
    }

    function totalStudents() public view returns (uint) {
        return students.length;
    }
}
