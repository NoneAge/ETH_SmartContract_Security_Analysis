pragma solidity ^0.4.25;

contract POC{
    //加法溢出
    //如果uint256 类型的变量达到了它的最大值(2**256 - 1)，如果在加上一个大于0的值便会变成0
    function add_overflow() returns (uint256 _overflow) {
        uint256 max = 2**256 - 1;
        return max + 1;
    }


	//减法溢出
	//如果uint256 类型的变量达到了它的最小值(0)，如果在减去一个小于0的值便会变成2**256-1(uin256类型的最大值)
	function sub_underflow() returns (uint256 _underflow) {
    	uint256 min = 0;
    	return min - 1;
	}
    
    //乘法溢出
	//如果uint256 类型的变量超过了它的最大值(2**256 - 1)，最后它的值就会回绕变成0
	function mul_overflow() returns (uint256 _underflow) {
    	uint256 mul = 2**255;
    	return mul * 2;
	}
}
