// SPDX-License-Identifier: MIT
pragma solidity >=0.5.5;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ElephantByAntToekn is ERC721 {
    address public owner;

    constructor() ERC721("ElephantByAntToekn", "EBAT") {
        owner = msg.sender;
    }

    function create(
        address to,
        uint256 id,
        string memory data
    ) public {
        require(msg.sender == owner, "No Auth");
        _safeMint(to, id);
        _setTokenURI(id, data);
    }
}
