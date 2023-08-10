// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../../contracts/bank/StrictBank.sol";

contract StrictBankHarness is StrictBank {

    constructor(RoleStore _roleStore, DataStore _dataStore) StrictBank(_roleStore, _dataStore) {}

    function afterTransferOut(address token) external {
        _afterTransferOut(token);
    }
}