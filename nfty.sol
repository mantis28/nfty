// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// nft contract
contract nfty is ERC721URIStorage, Ownable {

    constructor() ERC721("NFTY", "nfty") {}

    function mint(

        address to, 
        uint256 tokenId, 
        string calldata _uri
        ) external onlyOwner {
        _mint(to, tokenId);
        _setTokenURI(tokenId, _uri);

    }
}
