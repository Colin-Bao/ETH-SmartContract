pragma solidity ^0.4.4;
/*
pragma:版本声明
solidity:开发语言
0.4.4:当前合约的版本,0.4代表主版本, .4代表修复bug的升级版
^:代表向上兼容，0.4.4~0.4.9可以对我们当前的代码进行编译
*/

// contract Person 类比 class Person extends Contract
contract Person {
                uint _height; //身高
                uint _age;  //年龄
                address _owner; //代表合约拥有者
// 在创建对象时，构造函数会自动被最先调用
constructor() public {
    _height = 180;
    _age=29;
    _owner =msg.sender;
}

//
function owner() constant public returns (address) {
  return  _owner;
}

// set方法，可以修改_height属性
function setHeight(uint height)public {
  _height = height;
}

// 读取_height,view代表方法只读
function height() view public returns (uint)  {
  return  _height;
}


function setAge(uint age)public {
  _age = age;
}

function age() view public returns (uint) {
  return  _age;
}

function kill() public{
  if(_owner==msg.sender){
    //析构函数
    selfdestruct(_owner);
}

}
//0x692a70d2e424a56d2c6c27aa97d1a86395877b3a
}
