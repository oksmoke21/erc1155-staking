This is an ERC1155 staking contract for users to stake their ERC1155 tokens and earn passive income in the form of ERC20 tokens.

Steps to use smart contract-

1. Deploy Staking1155.sol, which is the contract TokenERC1155 that allows users to mint and burn ERC1155 tokens based on the OpenZeppelin library. 
2. Note the contract address of the deployed Staking1155.sol contract.
3. Deploy StakingToken.sol, which is the contract StakingERC1155 accepts the above address as constructor argument.
4. StakingERC1155 now becomes the managing contract for ERC1155 tokens generated via TokenERC1155, hence it must be set as an approved operater.
5. Call the setApprovalForAll function in TokenERC1155, with fields: operator = StakingERC1155 contract's address, approved = true.
6. ERC1155 tokens minted in TokenERC1155 can now be staked and unstaked by their owner in StakingERC1155 contract.
7. Users can stake and unstake tokens as a single entity or as a batch, as is facilitated by the novelty of ERC1155 tokens.
