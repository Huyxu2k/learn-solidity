pragma solidity ^0.8.0;

contract Election {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    mapping(uint => Candidate)public candidates;
    uint public candidatesCount;
    function addCandidate(string memory _name) private{
        candidatesCount ++;
        candidates[candidatesCount]=Candidate(candidatesCount,_name,0);
    }

    string public candidate;

    function Election_() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
}
