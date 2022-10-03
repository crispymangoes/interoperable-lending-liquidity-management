// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.16;

import { Messanger } from "src/crossChainMessaging/Messanger.sol";
import { ICCIPRouter } from "src/crossChainMessaging/ICCIPRouter.sol";

contract CCIP is Messanger, ICCIPRouter {
    function _sendMessage() internal override {}

    function _receiveMessage() internal override {}
}
