// SPDX-License-Identifier: MIT
// question 4:-Write a contract where people can donate Ether and the top 3 donors are tracked. 

pragma solidity ^0.8.0;

contract Track_TopDonors {
    struct Donors {
        address donor;
        uint amount;
    }

    Donors[3] public topDonors;

    function donate() public payable {
        require(msg.value > 0, "Donation must be greater than 0");
        insertTopDonor(msg.sender, msg.value);
    }

    function insertTopDonor(address _donor, uint _amount) internal {
        for (uint i = 0; i < 3; i++) {
            if (_amount > topDonors[i].amount) {
                for (uint j = 2; j > i; j--) {
                    topDonors[j] = topDonors[j - 1];
                }
                topDonors[i] = Donors(_donor, _amount);
                break;
            }
        }
    }

    function getTopDonors() public view returns (Donors[3] memory) {
        return topDonors;
    }
}
