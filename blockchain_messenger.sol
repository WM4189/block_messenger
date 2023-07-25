//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract BlockchainMessenger {

    uint public changeCounter;

    address public owner = msg.sender;

    string public theMessage;

    function updateTheMessage(string memory newMessage) public {
        if(msg.sender == owner) {
            theMessage = newMessage;
            changeCounter++;
        }
    }
}
