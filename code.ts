class ERC721Token {
    owners: Record<number, string> = {};

    mint(to: string, tokenId: number, tokenURI: string): void {
        if (!this.owners[tokenId]) {
            this.owners[tokenId] = to;
            this.tokenURIs[tokenId] = tokenURI;
        }
    }
}
