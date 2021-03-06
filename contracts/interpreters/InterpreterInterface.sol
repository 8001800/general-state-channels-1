pragma solidity ^0.4.18;

contract InterpreterInterface {
    bool public interpreter = true;
    /// @dev simply a boolean to indicate this is the contract we expect to be
    function isInterpreter() public view returns (bool){
      return interpreter;
    }

    // Notice: all functions must return pass or fail or nothing

    // function interpret(bytes _data) public returns (bool);

    function isClose(bytes _data) public returns (bool);

    function isSequenceHigher(bytes _data1, bytes _data2) public pure returns (bool);

    function isAddressInState(address _queryAddress) public returns (bool);

    function hasAllSigs(address[] recoveredAddresses) public returns (bool);

    function challenge(address _violator, bytes _state) public;

    function quickClose(bytes _data) public returns (bool);

    function allJoined() public returns (bool);

    function initState(bytes _date) public returns (bool);

    function run(bytes _data) public;

    function () public payable {

    }

}