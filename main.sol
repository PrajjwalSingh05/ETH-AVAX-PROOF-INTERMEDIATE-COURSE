// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  GradingSystem {
    error InsufficientCreditsError(uint requiredCredits);

    struct Student {
        string student_name;
        uint256 student_credits;
        mapping(string => uint8) stduent_grades;
    }

    mapping(address => Student) public students;

    function addStudent(address _studentAddress, string memory _name) public {
        students[_studentAddress].student_name = _name;
    }

    function assignGrade(address _studentAddress, string memory _course, uint8 _grade) public {
        require(_grade >= 0 && _grade <= 100, "Error: Invalid grade. Must be between 0 and 100.");
        students[_studentAddress].stduent_grades[_course] = _grade;
    }

    

    function assertCredits(address _studentAddress) public view returns (string memory) {
        uint256 credits = students[_studentAddress].student_credits;
        assert(credits >= 0 && credits <= 120); 
        return "Error: Credits must be between 0 and 120.";
    }

    function checkCredits(address _studentAddress, uint256 _requiredCredits) public view {
        uint256 credits = students[_studentAddress].student_credits;
        if (credits < _requiredCredits) {
            revert InsufficientCreditsError(_requiredCredits);
        }
    }

    function addCredits(address _studentAddress, uint256 _credits) public {
        students[_studentAddress].student_credits += _credits;
    }
}
