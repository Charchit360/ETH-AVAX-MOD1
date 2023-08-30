# Error Handling Smart Contract
This is a simple Solidity smart contract named "errorHandling" that implements a basic error handling functionality using require(), assert() and revert() methods. The contract allows to handle expected errors gracefully.



##  Description
This smart contract demonstrates error handling mechanisms in Solidity, a programming language for writing smart contracts on the Ethereum blockchain. The contract allows an owner to manage a balance and perform deposits and withdrawals. It showcases three different methods of error handling to manage situations where incorrect inputs or insufficient funds are encountered.
##  Code Explanation

The provided Solidity code defines a smart contract named `errorHandling`. Let's break down its key components and functionalities:

1. **Contract Variables:**
    - `address public owner`: This variable stores the Ethereum address of the contract owner.
    - `uint public balance`: This variable holds the balance of the contract.

2. **Constructor:**
    - The constructor is executed when the contract is deployed. It initializes the `owner` variable with the Ethereum address of the deployer.

3. **Modifier: `onlyOwner`**
    - This modifier restricts the execution of certain functions to only the contract owner. It checks if the sender of the transaction is the owner before allowing the function to proceed.

4. **Function: `deposit(uint _value)`**
    - This function allows the owner to deposit funds into the contract's balance.
    - It accepts an input `_value`, representing the amount of funds to be deposited.
    - The function uses the `onlyOwner` modifier to ensure only the owner can execute this function.
    - It requires `_value` to be greater than 0.
    - The deposited amount is added to the contract's `balance`.

5. **Function: `withdraw(uint _value)`**
    - This function enables the owner to withdraw funds from the contract's balance.
    - The `onlyOwner` modifier ensures only the owner can execute this function.
    - The function uses `assert` to check if the requested withdrawal amount `_value` is not greater than the available balance.
    - If the assert condition fails, it will result in a transaction revert.

6. **Function: `withdraw2(uint _value)`**
    - Similar to the previous function, this function allows the owner to withdraw funds from the balance.
    - It uses an `if-else` statement to handle the withdrawal conditions.
    - If `_value` is less than or equal to the balance, the requested amount is subtracted from the balance.
    - If `_value` is greater than the balance, a revert message is generated, and the transaction is reverted.

This smart contract demonstrates different ways of handling errors or undesirable conditions during contract execution. It includes examples of using both `assert` and conditional statements combined with `revert` to gracefully handle errors and provide clear error messages.
## Author
The MyToken contract is authored by Charchit (21BCG1028).
## License
This project is licensed under the MIT License.
