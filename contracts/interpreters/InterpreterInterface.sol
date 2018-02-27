pragma solidity ^0.4.18;

contract InterpreterInterface {
    bool public interpreter = true;
    uint256 public balanceA = 0;
    uint256 public balanceB = 0;

    /// @dev simply a boolean to indicate this is the contract we expect to be
    function isInterpreter() public view returns (bool){
      return interpreter;
    }

    // function interpret(bytes _data) public returns (bool);
    function startSettleStateGame(uint _gameIndex, bytes _state, uint8[2] _v, bytes32[2] _r, bytes32[2] _s) public;

    function isClose(bytes _data) public returns (bool);

    function isSequenceHigher(bytes _data1, bytes _data2) public pure returns (bool);

    function isAddressInState(address _queryAddress) public returns (bool);

    function closeWithTimeoutGame(bytes _state, uint _gameIndex, uint8[2] _v, bytes32[2] _r, bytes32[2] _s) public;

    function initState(bytes _state, uint _gameIndex, uint8[2] _v, bytes32[2] _r, bytes32[2] _s) public returns (bool);

    function () public payable {

    }

}