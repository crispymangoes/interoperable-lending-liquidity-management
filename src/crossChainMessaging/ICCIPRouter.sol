// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.16;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ICCIPRouter {
    struct Message {
        bytes receiver;
        bytes data;
        IERC20[] tokens;
        uint256[] amounts;
        uint256 gasLimit;
    }

    function ccipSend(uint256 destinationChainId, Message memory message) external;
}
