pragma solidity >=0.4.16 <0.9.0;

contract quest {
address public admin; 

mapping(address => uint) public balances;

event Sent(address from, address to, uint amount};


function mint(address reciever, uint amount){public 
require (msg.sender == admin);
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
