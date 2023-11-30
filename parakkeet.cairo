start:
    // ERC-20 Token Contract
    // (Simplified for illustration)
    
    // State variables
    data $balances
    data $totalSupply
    
    // Initialize
    on init:
        set $balances[msg.sender] $totalSupply
        return
    
    // Transfer function
    function transfer($to, $value):
        require $balances[msg.sender] >= $value
        $balances[msg.sender] -= $value
        $balances[$to] += $value
        return
end
