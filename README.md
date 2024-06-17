# Project Title: ErrorHandlerContract
# Description
This program defines a simple grading system contract called GradingSystem with the following features:

#  Custom Error
* InsufficientCreditsError(uint requiredCredits): A custom error to indicate insufficient credits.
# Structs
* Student: A struct that stores student information:
* student_name: The name of the student.
* student_credits: The number of credits the student has.
* stduent_grades: A mapping to keep track of the student's grades for different courses.
# Public Variables
* students: A public mapping that associates Ethereum addresses with Student structs. This allows storing and retrieving student information using their address.
# Functions
* addStudent(address _studentAddress, string memory _name): Adds a new student by specifying their address and name.
* assignGrade(address _studentAddress, string memory _course, uint8 _grade): Assigns a grade to a student for a specific course. Uses require to validate that the grade is between 0 and 100.

* assertCredits(address _studentAddress) public view returns (string memory): Checks that a student's credits are within a valid range (0 to 120). Uses assert to ensure this condition.

* checkCredits(address _studentAddress, uint256 _requiredCredits) public view: Checks if a student has the required number of credits. If not, it reverts with the custom error InsufficientCreditsError.

* addCredits(address _studentAddress, uint256 _credits): Adds credits to a student's record.

# Getting Started
To run this program, you can use Remix, an online Solidity IDE:

* Go to the Remix website.
* Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandlerContract.sol).
* Copy and paste the code provided above into the new file.
* Compile the Code
* Click on the "Solidity Compiler" tab in the left-hand sidebar.
* Make sure the "Compiler" option is set to "0.8.0" (or another compatible version).
* Click on the "Compile main.sol" button.
* Deploy the Contract
* Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
* Select the ErrorHandlerContract from the dropdown menu.
* Click on the "Deploy" button.
# Authors
Prajjwal Singh
# License
This project is licensed under the MIT License - see the LICENSE.md file for details
