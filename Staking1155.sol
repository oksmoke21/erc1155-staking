// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyTokenTokenERC1155 is ERC1155, ERC1155Burnable, Ownable {
    constructor() ERC1155("") {}

    function mint(address account, uint256 id, uint256 amount, bytes memory data) public
    {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) public
    {
        _mintBatch(to, ids, amounts, data);
    }
}
