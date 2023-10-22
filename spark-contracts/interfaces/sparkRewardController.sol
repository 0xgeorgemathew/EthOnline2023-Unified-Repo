// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface SparkRewardControllerInterface {
    function claimRewards(
        address[] calldata assets,
        uint256[] calldata amounts,
        address to,
        uint256 reward
    ) external;

    function claimRewardsOnBehalfOf(
        address[] calldata assets,
        uint256[] calldata amounts,
        address user,
        address to,
        uint256 reward
    ) external;

    function claimRewardsToSelf(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256 reward
    ) external;

    function claimAllRewards(
        address[] calldata assets,
        address to
    ) external;

    function claimAllRewardsOnBehalfOf(
        address[] calldata assets,
        address user,
        address to
    ) external;

    function claimAllRewardsToSelf(
        address[] calldata assets
    ) external;

    function getRewardsData(address asset, uint256 reward) external view returns (uint256 rewardData);

    function getRewardsByAsset(address asset) external view returns (uint256[] memory rewards);
}
