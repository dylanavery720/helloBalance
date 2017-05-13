pragma solidity ^0.4.4;


//web3.eth.accounts
//account2 = web3.eth.accounts[1]

contract HelloWorld {
   //hash table
    address public owner;
    mapping (address => uint) balances;

    function HelloWorld() {
      //msg.sender is the acct address calling contract
      owner = msg.sender;
      balances[owner] = 1000;
    }

    function transfer(address _to, uint _value) returns (bool success) {
      if (balances[msg.sender] < _value) {
        return false;
      }
      
      balances[msg.sender] -= _value;
      balances[_to] += _value;
      return true;
    }
  
    function getBalance(address _user) constant returns (uint _balance) {
      return balances[_user];
    }

    //call getBalance .. helloWorld.then(instance => instance.getBalance.call(account2)).then(balance => console.log(balance))
}





// contract HelloWorld { 
//     uint public balance;
    
//     //constructor
//     //runs once upon contract creation
//     function HelloWorld() {
//       balance = 1000;    
//     }

//     function Deposit(uint _value) returns(uint _newValue) {
//       // ...
//       balance += _value;
//       return balance; 
//     }
// }

//new truffle call .. 
//HelloWorld.deployed()
//.then(a => console.log(a.contract.balance()))
//.then(console.log) or resolve promise 

//transaction...
//helloWorld.then(function(instance) 
//{ return instance.Deposit.call(500);})
//.then(function(balance) { console.log(balance); });

//https://ethereum.stackexchange.com/questions/11935/problem-with-truffle-console-cannot-read-property-call-of-undefined