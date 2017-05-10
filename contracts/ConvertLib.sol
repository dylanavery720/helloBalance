pragma solidity ^0.4.4;

// this is like a helper function almost, still a contract

library ConvertLib{
	function convert(uint amount,uint conversionRate) returns (uint convertedAmount)
	{
		return amount * conversionRate;
	}
}
