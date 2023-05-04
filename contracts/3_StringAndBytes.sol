// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract StringAndBytes {
    string a;

    function setString(string memory _a) public {
        a = _a;
    }

    function getString() public view returns (string memory){
        return a;
    }

    function StringToBytes() public view returns (bytes memory){
        return bytes(a);
    }

    function StringToBytes2() public view returns (bytes1, bytes1, bytes1){
        return (bytes(a)[0], bytes(a)[1], bytes(a)[2]);
    }

    function BytesToString(bytes memory _a) public pure returns (string memory){
        return string(_a);
    }

    //_a의 첫번째 글자를 뽑아내는 것이 목표
    function bytesToString2(string memory _a) public pure returns(bytes1) {
        bytes memory _b;    // bytes형 변수 _b 선언 
        _b = bytes(_a);     // _b에 _a의 bytes 형변환 정보 대입
        return _b[0];
    }

    function BytesToString3(string memory _a) public pure returns (string memory){
        bytes memory _b = new bytes(1);
        _b[0] = bytes(_a)[0];
        return string(_b);
    }

    function bytesToString4(string memory _a, uint _n) public  pure returns (string memory) {
        bytes memory _b = new bytes(1);
        _b[0] = bytes(_a)[_n - 1];      /*[나중에] 조건문 배운 후에 다시 돌아오기, 글자 수에 맞게*/
        return string(_b);
    }

}

contract LocalVariable {
    function A() public pure returns(uint) {
        uint a = 5;
        uint b = 7;
        return (a + b);
    }
}