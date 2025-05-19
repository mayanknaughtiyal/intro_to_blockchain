// SPDX-License-Identifier: MIT
// question 1:- Create a voting system with multiple candidates. Each address can vote only once.
pragma solidity ^0.8.0;

contract Voting {
    struct Candidate {
         string name;
         uint voteCount;
  }
    address public owner;
    mapping(address => bool) public hasVoted;
    Candidate[] public candidates;
    owner = msg.sender;
    for (uint i = 0; i < candidateNames.length; i++) {
            candidates.push(Candidate(candidateNames[i], 0));
        }
    }
    function vote(uint candidateIndex) external {
    require(!hasVoted[msg.sender], "You have already voted.");
        require(candidateIndex < candidates.length, "Invalid candidate index.");

        candidates[candidateIndex].voteCount++;
        hasVoted[msg.sender] = true;
    }

    function getCandidates() external view returns (Candidate[] memory) {
     return candidates;
    }
}
