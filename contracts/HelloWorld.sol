pragma solidity ^0.4.4;

contract HelloWorld { 
    uint public balance;
    
    //constructor
    //runs once upon contract creation
    function HelloWorld() {
      balance = 1000;    
    }

    function Deposit(uint _value) returns(uint _newValue) {
      // ...
      balance += _value;
      return balance; 
    }
}

//new truffle call .. 
//HelloWorld.deployed()
//.then(a => console.log(a.contract.balance()))
//.then(console.log) or resolve promise 

//transaction...
//helloWorld.then(function(instance) 
//{ return instance.Deposit.call(500);})
//.then(function(balance) { console.log(balance); });

//https://ethereum.stackexchange.com/questions/11935/problem-with-truffle-console-cannot-read-property-call-of-undefined