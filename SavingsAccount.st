"gst SavingsAccount.st"

"Represents a SavingsAccount object which inherits from Account."

Account subclass: SavingsAccount [
    | interest |
 
    SavingsAccount class >> new: num cus: cus bal: bal [
        | r |
        r := super new: num cus: cus bal: bal.
        r init.
        ^r
    ]

    init [
        interest := 0
    ]

    accrue: rate [
        balance := balance + (balance * rate).
        interest := interest + (balance * rate)
    ]
]

