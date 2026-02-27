// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollingSystem {
    struct Poll {
        string title;
        string[] options;
        uint256 endTime;
        mapping(uint256 => uint256) voteCount; // optionIndex => count
        mapping(address => bool) hasVoted;     // user => votedStatus
    }

    Poll[] public polls;

    // Task 3: Allow users to create polls with a deadline
    function createPoll(string memory _title, string[] memory _options, uint256 _durationInMinutes) public {
        Poll storage newPoll = polls.push();
        newPoll.title = _title;
        newPoll.options = _options;
        newPoll.endTime = block.timestamp + (_durationInMinutes * 1 minutes);
    }

    // Task 3: Allow each address to vote only once before deadline
    function vote(uint256 _pollId, uint256 _optionIndex) public {
        Poll storage poll = polls[_pollId];
        
        require(block.timestamp < poll.endTime, "Poll has ended");
        require(!poll.hasVoted[msg.sender], "You have already voted");
        require(_optionIndex < poll.options.length, "Invalid option");

        poll.voteCount[_optionIndex]++;
        poll.hasVoted[msg.sender] = true;
    }

    // Task 3: Determine and return the winning option
    function getWinner(uint256 _pollId) public view returns (string memory winnerTitle) {
        Poll storage poll = polls[_pollId];
        require(block.timestamp >= poll.endTime, "Poll is still active");

        uint256 winningVoteCount = 0;
        uint256 winningOptionIndex = 0;

        for (uint256 i = 0; i < poll.options.length; i++) {
            if (poll.voteCount[i] > winningVoteCount) {
                winningVoteCount = poll.voteCount[i];
                winningOptionIndex = i;
            }
        }
        return poll.options[winningOptionIndex];
    }
}