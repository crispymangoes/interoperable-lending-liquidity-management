// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.16;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ICCIPRouter } from "src/crossChainMessaging/ICCIPRouter.sol";

contract drone {
    ICCIPRouter private immutable ccipRouter;
    uint256 public immutable hiveChainId;
    uint256 public immutable droneChainId;

    constructor(
        ICCIPRouter _router,
        uint256 _hiveChainId,
        uint256 _dronChainId
    ) {
        ccipRouter = _router;
        hiveChainId = _hiveChainId;
        droneChainId = _dronChainId;
    }

    /**
     * @notice sends message to Hive chain
     */
    function _updateReservesOnHive(
        uint256 assetSupply,
        uint256 assetDemand,
        uint256 assetOwned
    ) internal {
        // If drone is on hive chain, just call function on hive contract.
        // else use CCIP to send message to hive chain.
    }

    function _depositToHive(uint256 amount, address depositor) internal {
        // Sends a message to the Hive contract telling it how much the depositor deposited, so that it can determine shares owed, and send them to depositor address
    }

    function _withdrawFromHive(uint256 amount, address receiver) internal {
        // Think this function needs to send shares to Hive contract for burning? So we can burn the shares at the same time total assets is updated?
        // This way someone elses deposit/withdraw does not affect share price?
    }

    /**
     * @notice hive calls this function using CCIP to have drone withdraw assets from Aave, and send them to a destination.
     */
    function _withdrawAndSend(
        uint256 _destinationChainId,
        uint256 _amount,
        address _receiver
    ) internal {
        // if _destinationChainId is the same as drone chain, no need to bridge assets to a different chain.
    }
}

//TODO how des retrying messages work? Like if a user is depositing or withdrawing what if the message fails.
