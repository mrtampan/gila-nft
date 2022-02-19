// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract RainbowNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721 ("NFTkuu", "NFTKUU") {
    console.log("RainbowNFT!");
  }

  function mint() public {
    uint256 newItemId = _tokenIds.current();
    _safeMint(msg.sender, newItemId);
    console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
    _setTokenURI(newItemId, "https://raw.githubusercontent.com/mrtampan/nftkuu/main/nftkuu.json");
    _tokenIds.increment();
  }
}
