# PersonalBridge (Base Network)

A lightweight, secure, and transparent personal asset management bridge deployed on the Base (Layer 2) network. This project allows users to securely lock and release ERC-20 tokens between their controlled addresses using a custom smart contract.

## Contract Details
- **Network:** Base Mainnet
- **Deployer Address:** `0xA1C6808b8f08D091e2826C9640Be302a310655E1`
- **Contract Address:** `0x3c810c613184Ef28D1560D5425099c041d08285`
- **License:** MIT

## Core Functions
1. **bridgeTokens(address token, uint256 amount):** Securely transfers approved tokens from your wallet to the contract (Locking).
2. **releaseTokens(address token, address recipient, uint256 amount):** Transfers tokens from the contract to a designated recipient address (Releasing). Only the contract owner can call this function..

## How to Deploy & Interact
1. **Verification:** All source code is verified on [BaseScan](https://basescan.org/address/0x3c810c613184Ef28D1560D5425099c041d08285#code).
2. **Approve:** Ensure you call the `approve` function on the specific ERC-20 token contract (e.g., USDC) and set the `PersonalBridge` address (`0x3c810c613184Ef28D1560D5425099c041d08285`) as the `spender` before bridging.
3. **Bridge:** Interact with the `bridgeTokens` method using your wallet.

## Security
- Built using OpenZeppelin's IERC20 interface.
- Ownership is restricted to the deployer address: `0xA1C6808b8f08D091e2826C9640Be302a310655E1`.

## License
This project is licensed under the MIT License.
