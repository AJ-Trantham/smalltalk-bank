"gst Bank.st"

"Represents a Bank class and serves as the driver class"


Object subclass: Bank [
    | accounts |

    Bank class >> new [
        | b |
        b := super new.
        b init.
        ^b
    ]
    init [
        accounts := Set new
    ]

    add: item [
        accounts add: item
    ]

    accrue: rate [
        accounts do: [ :acc |
            acc accrue: rate
        ]
    ]

    toString [
        |s newLine|
        s := ''.
        accounts do: [ :acc | 
            s := s  , (acc toString)
                    , (Character nl asString)
        ].
        ^s
    ]
]

"---------------------------------Main driver code-----------------------------------"
bank := Bank new.

ann := Customer new: 'Ann'.
bob := Customer new: 'Bob'.

"make new accounts and add to bank"
checkAcc := (CheckingAccount new: '01001' cus: ann bal: 100.00).
bank add: checkAcc.

savAcc := (SavingsAccount new: '01002' cus: ann bal: 200.00).
bank add: savAcc.

"------------------Test Accrue-------------"
('Test Accrue at 0.02') printNl.
bank accrue: 0.02.

(Character nl asString) print.
('Expected Bank Contents: ') printNl.
('01001:Ann:204.0') printNl.
('01002:Ann:100.0') printNl.
(Character nl asString) print.

('Actual Bank Contents:') printNl.
(bank toString) printNl

"---------------Test Deposit-----------"
('Test deposit 50') printNl.
savAcc deposit: 50.

(Character nl asString) print.
('Expected Bank Contents: ') printNl.
('01001:Ann:254.0') printNl.
('01002:Ann:100.0') printNl.
(Character nl asString) print.

('Actual Bank Contents:') printNl.
(bank toString) printNl

"---------------Test withdraw-----------"
('Test withdraw 50') printNl.
savAcc withdraw: 50.

(Character nl asString) print.
('Expected Bank Contents: ') printNl.
('01001:Ann:204.0') printNl.
('01002:Ann:100.0') printNl.
(Character nl asString) print.

('Actual Bank Contents:') printNl.
(bank toString) printNl
