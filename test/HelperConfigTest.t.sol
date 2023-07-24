// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {HelperConfig} from "../script/HelperConfig.s.sol";
import {DeployHelperConfig} from "../script/DeployHelperConfig.s.sol";

contract HelperConfigTest is Test {
    function setUp() external {}

    function testNewDeploymentIsNotEqualToZeroZero() external {
        DeployHelperConfig deployHelperConfig = new DeployHelperConfig();
        HelperConfig helperConfig = deployHelperConfig.run();
        assert(helperConfig.activeNetworkConfig() != address(0));
    }
}
