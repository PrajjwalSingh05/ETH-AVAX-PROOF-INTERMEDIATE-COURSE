// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlerContract {
    error InsufficientBalanceError(uint requiredAmount);

    string public newToken = "Prajjwal";
    uint256 public current_supply = 200;
    mapping(address => uint256) public balances;
   
    function  customCheck(uint inputed_stock) public pure returns (string memory) {
        uint balance_stock = 150;
        require(inputed_stock <= balance_stock, "Error message:Stock not Available");
        return "Product is avaiable ";
    }

 
    function  assertcheck (uint _quantity) public pure returns (string memory){
        assert(_quantity> 0 && _quantity < 99); 
        return "Error Message: Quantity must be between 0 and 99";
}

    function custom_revert_condition(uint _balance, uint _amount) public pure {
        if (_balance < _amount) {
            revert("Custom error message: Something went wrong");
        }
    }
}
