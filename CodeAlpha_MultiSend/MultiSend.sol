// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSend {
    // Function to send equal Ether to multiple addresses [cite: 31, 33]
    function sendEther(address payable[] memory _recipients) public payable {
        require(_recipients.length > 0, "No recipients provided");
        
        // Calculate equal share 
        uint256 amountPerPerson = msg.value / _recipients.length;

        for (uint256 i = 0; i < _recipients.length; i++) {
            // Transfer and check for success [cite: 34]
            (bool success, ) = _recipients[i].call{value: amountPerPerson}("");
            require(success, "Transfer failed to one of the addresses");
        }
    }
}