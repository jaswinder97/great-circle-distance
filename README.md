# Solution Technical problem

We have some customer records in a text file (customers.txt) -- one customer per line, JSON lines formatted. We want to invite any customer within 100km of our Dublin office for some food and drinks on us. This program that will read the full list of customers and output the names and user ids of matching customers (within 100km), sorted by User ID (ascending).

## Getting Started

### Prerequisites

What things you need to install the software and how to install them

```
ruby 2.6.1
```
or using rvm (first install `rvm` incase it is not installed)

```
rvm install 2.6.1
```
and then install required basic gems

```
gem install rake
```

### How to use

We have a script with name 'offer_food.rb' which we can just run as

```
ruby dublin_food_offer.rb
```

or 

```
./dublin_food_offer.rb
```

This will generate required `output.txt` file at the root path of the project.

Note: Make sure to add executable permission to this file before running it as  `chmod +x dublin_food_offer.rb`

## Running the tests

Explain how to run the automated tests for this system

```
rake test
```

## Deployment

Add additional notes about how to deploy this on a live system

Just use the bash script format to run the script as `./dublin_food_offer.rb`