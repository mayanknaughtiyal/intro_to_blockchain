// SPDX-License-Identifier: GPL-3.0
// question 5:-Implement a simple auction system where users can place bids, and the highest bidder wins.

pragma solidity ^0.8.0;

contract highiestbidding {
    address public current_highestBidder;
    uint public highestBid;

    mapping(address => uint) public refunds;

    function more_higher_bid() public payable {
        require(msg.value > highestBid, "sorry bid more");

        if (highestBid > 0) {
            refunds[current_highestBidder] += highestBid;
        }

        current_highestBidder = msg.sender;
        highestBid = msg.value;
    }

    function withdrawRefund() public {
        uint amount = refunds[msg.sender];
        require(amount > 0, "No refund to withdraw");

        refunds[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
}
