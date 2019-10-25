"gst CheckingAccount.st"
"Represesnts a Checking Account class. Inherits from Account."

Account subclass: CheckingAccount [

    new: num cus: cus bal: bal [
        ^super new: num c: cus b: bal       
    ]

    accrue: rate [
    ]
]



