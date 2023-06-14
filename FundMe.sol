// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{

    function fund() public payable{
        //set a min fund value
        require(msg.value > 1e18, "Didn't send enought!"); //1e18 = 1*10**18 = 1000000000000000000
    }

    function getPrice() public view returns(uint256) {
        //Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 price, , , )  = priceFeed.latestRoundData();
        return uint256(price * 1e10);
    }
    //function withdraw(){}
}
