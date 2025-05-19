pragma solidity ^0.8.4;

contract Splitter {
    address payable public recipient1 = payable(0xBEd4C497d38D9834E4a627a9786bD216622AeD45);
    address payable public recipient2 = payable(0x898d7bd58834EBaA8B5077Ad353Ce2c2A29Da75c);
    address payable public recipient3 = payable(0x27aa3a45917a4233804345FFf83BD1D7C70F1023);

    receive() external payable {
        uint256 share = msg.value / 3;

        recipient1.transfer(share);
        recipient2.transfer(share);
        recipient3.transfer(msg.value - (share * 2)); // Send remainder to the last recipient
    }
}
