// SPDX-License-Identifier: MIT
pragma solidity >=0.5.5;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AToken is ERC20 {
    address owner;

    constructor() public ERC20("AToken", "AT") {
        owner = msg.sender;
        _setupDecimals(3);
        _mint(owner, 10000000000);
    }
}
