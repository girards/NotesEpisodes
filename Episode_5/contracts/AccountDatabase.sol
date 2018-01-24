pragma solidity ^0.4.18;

contract AccountDatabase {

    mapping (address => uint) public balances;
    uint public totalSupply;

    function AccountDatabase() public {
        totalSupply = 1 ether;
        balances[msg.sender] = totalSupply;
    }

    function withdraw(uint value) public {
        require(balances[msg.sender] >= value);
        balances[msg.sender] -= value;
        totalSupply -= value;
        require(msg.sender.send(value));
    }

    function () public payable {
        totalSupply += msg.value;
        balances[msg.sender] += msg.value;
    }

    function transfer(address to, uint value) public returns (bool success) {
        require(balances[msg.sender] >= value);
        balances[to] += value;
        balances[msg.sender] -= value;
        return true;
    }
}
