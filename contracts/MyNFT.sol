// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable {

    uint256 private _tokenId;

    constructor () ERC721("Vortex", "VTX") Ownable(msg.sender) {}
    
    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns (uint256) {
            _tokenId++;
            uint256 newItemId = _tokenId;
            _mint(recipient, newItemId);    
            _setTokenURI(newItemId, tokenURI);
            return newItemId;
        }
}