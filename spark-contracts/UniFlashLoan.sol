pragma solidity ^0.8.0;

// Import the updated interface
import "./interfaces/sparkFlashLoanInterface.sol";

contract UniFlashLoan {
    SparkLendInterface targetContract;

    constructor(address _targetContractAddress) {
        targetContract = SparkLendInterface(_targetContractAddress);
    }

    // Function to call the borrow function
    function callBorrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        uint16 referralCode,
        address onBehalfOf
    ) public {
        // Call the borrow function on the target contract with dynamic parameters
        targetContract.borrow(asset, amount, interestRateMode, referralCode, onBehalfOf);
    }

    // Function to call the withdraw function
    function callWithdraw(
        address asset,
        uint256 amount,
        address to
    ) public {
        // Call the withdraw function on the target contract with dynamic parameters
        targetContract.withdraw(asset, amount, to);
    }

    // Function to call the flashLoan function
    function callFlashLoan(
        address receiverAddress,
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata interestRateModes,
        address onBehalfOf,
        bytes calldata params,
        uint16 referralCode
    ) public {
        // Call the flashLoan function on the target contract with dynamic parameters
        targetContract.flashLoan(receiverAddress, assets, amounts, interestRateModes, onBehalfOf, params, referralCode);
    }

    // Function to call the repay function
    function callRepay(
        address asset,
        uint256 amount,
        uint256 rateMode,
        address onBehalfOf
    ) public {
        // Call the repay function on the target contract with dynamic parameters
        targetContract.repay(asset, amount, rateMode, onBehalfOf);
    }

    // Function to call the repayWithPermit function
    function callRepayWithPermit(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        address onBehalfOf,
        uint256 deadline,
        uint8 permitV,
        bytes32 permitR,
        bytes32 permitS
    ) public {
        // Call the repayWithPermit function on the target contract with dynamic parameters
        targetContract.repayWithPermit(asset, amount, interestRateMode, onBehalfOf, deadline, permitV, permitR, permitS);
    }

    // Function to call the supply function
    function callSupply(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) public {
        // Call the supply function on the target contract with dynamic parameters
        targetContract.supply(asset, amount, onBehalfOf, referralCode);
    }

    // Function to call the swapBorrowRateMode function
    function callSwapBorrowRateMode(
        address asset,
        uint256 rateMode
    ) public {
        // Call the swapBorrowRateMode function on the target contract with dynamic parameters
        targetContract.swapBorrowRateMode(asset, rateMode);
    }
}
