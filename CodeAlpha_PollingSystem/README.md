# CodeAlpha_PollingSystem



📌 Project Overview

    This repository contains my submission for Task 3 of the Blockchain Development Internship at CodeAlpha. The project involves developing a decentralized polling system that ensures transparency, security, and automated results using the Ethereum blockchain.

🛠️ Task 3: Polling System Smart Contract

    In alignment with the internship tasks, this contract implements a robust voting mechanism with the following features:
    
    1. Poll Structure: Defines a structure for polls, including a title, various options, an end time, and vote counts.
    2. Poll Creation: Enables users to create new polls by defining the voting options and a specific deadline.
    3. Voting Security: Uses Solidity mappings to ensure each unique Ethereum address can only cast a single vote per poll. 
    4. Time-Based Logic: Utilizes `block.timestamp` to enforce voting deadlines, preventing any votes from being cast after a poll has expired.
    5. Automated Results: Includes a function to determine and return the winning option based on the highest vote count once the poll ends.



🚀 Technical Stack
   
    Language: Solidity 
    IDE: Remix IDE 
    Platform: Ethereum 


📋 Instructions to Run

    1. Compile: Load the `PollingSystem.sol` file in **Remix IDE** and compile using a version higher than 0.8.0.
    2. Deploy: Navigate to the "Deploy & Run Transactions" tab and deploy the contract.
    3. Create Poll: Use the `createPoll` function by entering a title (e.g., "Reunion Location"), an array of options (e.g., `["Beach", "Mountains"]`), and a duration in minutes.
    4. Vote: Cast a vote by providing the poll index (ID) and the index of your chosen option.
    5. Declare Winner: Once the duration has passed, call `getWinner` to retrieve the final result.

🔗 Connect with Me

    LinkedIn: www.linkedin.com/in/sadikislamudoy
 

