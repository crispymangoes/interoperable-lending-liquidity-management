// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.16;

/**
 @title Provides generic interface to allow protocol to use different underlying messaging protocols.
 */
abstract contract Messanger {
    function _sendMessage(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) internal virtual;

    function _receiveMessage(uint256 srcChain, bytes calldata srcAddress, ) internal virtual;
}
