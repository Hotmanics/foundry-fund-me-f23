// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployHelperConfig is Script {
    function run() public returns (HelperConfig) {
        vm.startBroadcast();
        HelperConfig config = new HelperConfig();
        vm.stopBroadcast();
        return config;
    }
}
