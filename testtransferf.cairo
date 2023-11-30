start:
    // Transfer Function
    // (Simplified for illustration)
    
    // State variables
    data $balances
    
    // Transfer function
    function transfer($from, $to, $value):
        require $balances[$from] >= $value
        $balances[$from] -= $value
        $balances[$to] += $value
        return
end
