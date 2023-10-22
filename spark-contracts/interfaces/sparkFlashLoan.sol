// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.2;
interface sparkFlashLoanInterface {
    function flashLoan(
        address receiverAddress,
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata interestRateModes,
        address onBehalfOf,
        bytes calldata params,
        uint16 referralCode
    ) external;

   function withdraw(address asset, uint256 amount, address to) external;

    function borrow(address asset, uint256 amount, uint256 interestRateMode, uint16 referralCode, address onBehalfOf) external;

    function repay(address asset, uint256 amount, uint256 rateMode, address onBehalfOf) external;

    function repayWithPermit(address asset, uint256 amount, uint256 interestRateMode, address onBehalfOf, uint256 deadline, uint8 permitV, bytes32 permitR, bytes32 permitS) external;

    function supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;

    function swapBorrowRateMode(address asset, uint256 rateMode) external;
}


