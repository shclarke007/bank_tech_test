# bank_tech_test

## Purpose
Practice producing best code when there is minimal time pressure.  
Practice Object-Oriented design and TDD skills

## My approach
Using the acceptance criteria I first started the challange by diagramming user interaction using UML interaction diagrams. Following the interaction diagram I created class diagrams to help me to identify my class attributes and methods. Through diagramming, I came up with four classes: ```BankAccount``` class that allows users to deposit and withdraw money from their account; ```Transaction``` class will keep track of each deposit and withdrawal request to the account. Here the date will be recorded with each transaction and stored in a history. This brought about the 3rd class, ```TransactionHistory ``` whose job is to stored the transactions made. The final class, ```BankStatement``` allows for the printing of all account transaction activities. The separation of the four classes allow for single responsibilities, relieving the burden of one class having too much work to do.
Following diagramming I then proceeded with writing initial simple spec tests so user can deposit and withdraw money.
After implementing these basic features, I then moved on to implementing the print statement requirement and incorporating into the other classes.

## Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012  
And a deposit of 2000 on 13-01-2012  
And a withdrawal of 500 on 14-01-2012  
When she prints her bank statement  
Then she would see:  
```
date       || credit || debit || balance
14/01/2012 ||        || 500.00|| 2500.00
13/01/2012 || 2000.00||       || 3000.00
10/01/2012 || 1000.00||       || 1000.00
```
## User Stories
```
As a user with a bank account:  
I would like to deposit money into my account  
I would like to withdraw money from my account  
I would like to print my account statement with (date, amount, balance) of withdrawals and deposits  
```

## How to use
git clone https://github.com/learningtocode101/bank_tech_test.git  
bundle install  
run rspec to ensure all tests pass 
Launch irb to interact with app 

```
2.5.0 :001 > require './lib/bankaccount'
 => true 
2.5.0 :002 > an_account = BankAccount.new
 => #<BankAccount:0x00007fe35489c350 @balance=0> 
2.5.0 :003 > an_account.deposit(100)
 => #<BankAccount:0x00007fe35489c350 @balance=100> 
2.5.0 :005 > an_account.withdraw(50)
 => #<BankAccount:0x00007fe35489c350 @balance=50> 
```
 
