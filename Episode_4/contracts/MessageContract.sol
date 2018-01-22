pragma solidity ^0.4.18;

contract MessageContract {

    string public message = "Premier Message";
    address public currentPoster = msg.sender;
    uint public currentPostPrice = 0;

    function print() public view returns (string) {
        return (message);
    }

    function setMessage(string _message) public payable {
        require (msg.value > currentPostPrice);
        require (currentPoster.send(currentPostPrice));
        message = _message;
        currentPoster = msg.sender;
        currentPostPrice = msg.value;
    }
}
