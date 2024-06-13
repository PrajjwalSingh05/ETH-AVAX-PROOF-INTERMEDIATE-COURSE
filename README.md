# Project Title: ErrorHandlerContract
# Description
This program defines a simple error handling contract called ErrorHandlerContract with the following features:

# Public Variables:

* newToken: Stores the token's name.
* current_supply: Stores the total supply of the token.
* balances: A mapping to keep track of balances associated with addresses.
 # Functions:

* customCheck(uint inputed_stock): A function to check if the input stock is available. Uses require to validate the stock availability.
* assertcheck(uint _quantity): A function to check if the quantity is within a specified range. Uses assert to ensure the quantity is between 0 and 99.
* custom_revert_condition(uint _balance, uint _amount): A function to revert the transaction with a custom error message if the balance is less than the amount.
# Custom Error:

* InsufficientBalanceError(uint requiredAmount): A custom error to indicate insufficient balance.
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
