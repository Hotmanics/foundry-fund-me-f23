// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() public returns (FundMe) {
        HelperConfig config = new HelperConfig();
        address priceFeedAddr = config.activeNetworkConfig();

        vm.startBroadcast();
        FundMe fundMe = new FundMe(priceFeedAddr);
        vm.stopBroadcast();
        return fundMe;
    }
}
