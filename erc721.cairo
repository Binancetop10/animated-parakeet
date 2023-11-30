start:
    // ERC-721 NFT Contract
    // (Simplified for illustration)
    
    // State variables
    data $owners
    data $tokenURIs
    
    // Mint function
    function mint($to, $tokenId, $tokenURI):
        require $owners[$tokenId] == 0  // Check if token doesn't exist
        $owners[$tokenId] = $to
        $tokenURIs[$tokenId] = $tokenURI
        return
end
