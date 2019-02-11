# bank_tech_test

## Purpose
Practice producing best code when there is minimal time pressure.  
Practice Object-Oriented design and TDD skills

## My approach
Using the acceptance criteria I first started thw challange by diagramming with identify classes and their responsibilites.  

## Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012  
And a deposit of 2000 on 13-01-2012  
And a withdrawal of 500 on 14-01-2012  
When she prints her bank statement  
Then she would see  
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## User Stories
```
As a user with a bank account:  
I would like to  deposit money into my account  
I would like to withdraw money from my account  
I would like to print my account statement with (date, amount, balance) of withdrawals and deposits  
```

## How to use
git clone https://github.com/learningtocode101/bank_tech_test.git
bundle install
run rspec to ensure all tests pass
Launch irb to interact with app
 
