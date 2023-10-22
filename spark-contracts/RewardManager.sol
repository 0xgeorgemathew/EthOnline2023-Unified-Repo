// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Import the SparkRewardController interface
import "./interfaces/SparkRewardControllerInterface.sol";

contract RewardManager {
    SparkRewardController rewardController;

    constructor(address _rewardControllerAddress) {
        rewardController = SparkRewardController(_rewardControllerAddress);
    }

    // Claim single reward for a list of assets
    function claimRewards(
        address[] calldata assets,
        uint256[] calldata amounts,
        address to,
        uint256 reward
    ) public {
        rewardController.claimRewards(assets, amounts, to, reward);
    }

    // Claim single reward on behalf of a user for a list of assets
    function claimRewardsOnBehalfOf(
        address[] calldata assets,
        uint256[] calldata amounts,
        address user,
        address to,
        uint256 reward
    ) public {
        rewardController.claimRewardsOnBehalfOf(assets, amounts, user, to, reward);
    }

    // Claim single reward for a list of assets to the sender
    function claimRewardsToSelf(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256 reward
    ) public {
        rewardController.claimRewards(assets, amounts, msg.sender, reward);
    }

    // Claim all rewards for a list of assets
    function claimAllRewards(
        address[] calldata assets,
        address to
    ) public {
        rewardController.claimAllRewards(assets, to);
    }

    // Claim all rewards on behalf of a user for a list of assets
    function claimAllRewardsOnBehalfOf(
        address[] calldata assets,
        address user,
        address to
    ) public {
        rewardController.claimAllRewardsOnBehalfOf(assets, user, to);
    }

    // Claim all rewards for a list of assets to the sender
    function claimAllRewardsToSelf(
        address[] calldata assets
    ) public {
        rewardController.claimAllRewards(assets, msg.sender);
    }

    // Get the data of a specific reward for an asset
    function getRewardsData(address asset, uint256 reward) public view returns (uint256 rewardData) {
        return rewardController.getRewardsData(asset, reward);
    }

    // Get a list of rewards activated for an asset
    function getRewardsByAsset(address asset) public view returns (uint256[] memory rewards) {
        return rewardController.getRewardsByAsset(asset);
    }
}
