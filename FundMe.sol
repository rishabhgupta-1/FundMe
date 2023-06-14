// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe{

    function fund() public payable{
        //setting a min fund value
        require(msg.value > 1e18, "Didn't send enought!"); //1e18 = 1*10**18 = 1000000000000000000

    }
    //function withdraw(){}
}
