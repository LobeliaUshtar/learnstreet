# Bank Teller Project
def add_account(name, password, accounts)
    # Create a new account and return its name. Password is the supplied PIN of the account returned.
    # Also establish an account balance.
    #WRITE YOUR add_account METHOD HERE
    accounts = {'name'=>name,'password'=>password,'balance'=>0}
    return accounts
end

def get_balance(accounts)
    #WRITE YOUR get_balance METHOD HERE
    return accounts['balance']
end

def do_deposit(accounts, amount)
    # Add amount to the supplied account (called accounts).
    #WRITE YOUR do_deposit METHOD HERE
    accounts['balance'] = accounts['balance'] + amount
    return accounts
end

def do_withdraw(accounts, amount)
    # Withdraw amount from accounts if the amount is available.
    # For the purposes of this exercise, we won't do anything special if there is an insufficient balance.
    #WRITE YOUR do_withdraw METHOD HERE
    if accounts['balance'] >= amount
        accounts['balance'] = accounts['balance'] - amount
    end
    return accounts
end   

def do_transfer(debtor, creditor, amount)
    # Transfer amount from one account to another account: from debtor to creditor.
    # Remember to check for sufficient funds!
    #WRITE YOUR do_transfer METHOD HERE
    accounts = {}
    if debtor['balance'] >= amount
        creditor['balance'] = creditor['balance'] + amount
        debtor['balance'] = debtor['balance'] - amount
    end
    accounts['debtor'] = debtor
    accounts['creditor'] = creditor
    return accounts
end 