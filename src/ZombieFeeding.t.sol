pragma solidity ^0.4.19;

import "ds-test/test.sol";

import "./ZombieFeeding.sol";

contract ZombieFeedingTest is DSTest {
	ZombieFeeding zombieFeeding;
    
	function setUp() public {
		zombieFeeding = new ZombieFeeding();
	}
    
	function test_feedAndMultiply() public {

		zombieFeeding.createRandomZombie("a");
 
		
		zombieFeeding.feedAndMultiply(0, 1, "kitty");
		uint dna1 = zombieFeeding.getDnaByIndex(1);
		assertEq(dna1 % 100, 99);
		
		zombieFeeding.feedAndMultiply(0, 1, "nonKitty");        
    }
}
