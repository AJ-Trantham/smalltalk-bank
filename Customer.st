"gst Customer.st"

"Represents a customer Class"

Object subclass: Customer [

    |name|

    Customer class [
        new: customerName [
                ^(self new init: customerName)
        ]
     ]   

    init: customerName [
        name := customerName
    ]

    toString [
        ^name
    ]
]
