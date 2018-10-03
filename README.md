# Client segmentation #

A fantastic startup wants to segment it's clients into groups in order to prioritise sales to them.

A client has:
- a number of employees.
- a number of offices.
- an annual turnover.

Step 1

Can you write a program that returns one of two classifications given a client. The classifications are:

Small - employee count is less than 50 and number of offices is one and annual turnover is less than £1M.
Enterprise - all other clients.

Step 2

Can you enhance your program to add the following segment.

Medium - employee count between 50 - 1000 and office count is between 1 and 5 and turnover is between £10M - £20M.

Step 3

Can you write a new program that given an array list of clients, returns them grouped into their classifications.

e.g.

group_clients([Client.new(1, 1, 0.5), Client.new(2,2, 0.5), Client.new(65, 3, 15)]) => {
    "Small" => [Client.new(1, 1, 0.5), Client.new(2,2, 0.5)],
    "Medium" => [Client.new(65, 3, 15)]
}