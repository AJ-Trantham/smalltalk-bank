"gst Account.st"

"Represents an Account Class"

Object subclass: Account [

    |number customer balance|

    Account class [
            new: num cus: cus bal: bal  [
                ^self new init: num cus: cus bal:bal
            ]
     ]  

     init: num cus: cus bal: bal [
        number := num.
        customer := cus.
        balance := bal.
     ] 

    accrue: rate [
     ^self subclassResponsibility
    ]

    balance [
        ^balance
    ]

    deposit: amount [
        balance := balance + amount
    ]

    withdraw: amount [
        balance := balance - amount
    ] 

    toString [
        |s|
        s:= number, ':', (customer toString), ':', (balance asString).
        ^s
    ]
  
]
