// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minUsd = 5e18;

    address[] public funders; //keeping track of funders
    mapping(address funder => uint256 amountFunded) public addressToAmountFunded;
    //mapping address to amount, to keep track of amount send by particular sender

    function fund() public payable{
        //set a min fund value
        require(msg.value.getConversionRate() >= minUsd, "Didn't send enough ETH!"); //1e18 = 1*10**18 = 1000000000000000000
        funders.push(msg.sender); //adding sender address to funders
    }
}
