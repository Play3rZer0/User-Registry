//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract UserRegistry {
    mapping(address => UserProfile) public profiles;
    address[] public userList;

    struct UserProfile {
        string name;
        uint age;
    }

    function addUser(address _userAddress, string memory _name, uint _age) public {
    require(profiles[_userAddress].age == 0, "User already exists"); // Check if age is still default (0)

    profiles[_userAddress] = UserProfile({ name: _name, age: _age });
    userList.push(_userAddress);
}

    function getUserCount() public view returns (uint) {
        return userList.length;
    }

    function getUserAddressAtIndex(uint _index) public view returns (address) {
        require(_index < userList.length, "Index out of bounds");
        return userList[_index];
    }

    function getUserProfile(address _userAddress) public view returns (UserProfile memory) {
        return profiles[_userAddress];
    }

    // Iterate through all users
    function getAllUsers() public view returns (UserProfile[] memory) {
        UserProfile[] memory allUsers = new UserProfile[](userList.length);
        for (uint i = 0; i < userList.length; i++) {
            allUsers[i] = profiles[userList[i]];
        }
        return allUsers;
    }
}
