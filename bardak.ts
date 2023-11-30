#[starknet::contract]

    #[external(v0)]
    fn mint(
        self: @ContractState,
        recipient: ContractAddress,
        amount: u256
    ) {
        // This function is NOT protected which means
        // ANYONE can mint tokens
        let mut unsafe_state = ERC20::unsafe_new_contract_state();
        ERC20::InternalImpl::_mint(ref unsafe_state, recipient, amount);
    }
}
