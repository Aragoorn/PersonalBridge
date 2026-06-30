// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PersonalBridge is Ownable {
    
    constructor() Ownable(msg.sender) {}

    // انتقال توکن از کیف پول کاربر به قرارداد جهت قفل کردن
    function bridgeTokens(address token, uint256 amount) external {
        IERC20(token).transferFrom(msg.sender, address(this), amount);
    }

    // آزاد کردن توکن‌ها به مقصد مشخص (توسط خودت)
    function releaseTokens(address token, address recipient, uint256 amount) external onlyOwner {
        IERC20(token).transfer(recipient, amount);
    }
}