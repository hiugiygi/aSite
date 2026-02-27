pragma solidity >=0.4.16 <0.9.0;

contract quest {
address public 81089FBF92C26CA186B701F0F50B7844F699E3BA7415C26CFA2C281178A7107E;

mapping(address => uint) public balances;

event Sent(address from, address to, uint amount};
contructor(){
= msg.sender;
}

function mint(address reciever, uint amount){public 
require (msg.sender == 81089FBF92C26CA186B701F0F50B7844F699E3BA7415C26CFA2C281178A7107E);
balances[reciever] += amount;
}

error InsufficientBalance(uint requested, uint available);

function send(address reciever, uint amount) public {
require(amount <= balances[msg.sender], InsufficientBalance(amount, balances[msg.sender]));
balances[msg.sender]-= amount;
balances[reciever] += amount;
emit Sent(msg.sender, reciever, amount);
}
}
