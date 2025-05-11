# User-Registry

A user registry smart contract that uses mapping and arrays to store user profile information.

*****************************

This is a Solidity program that makes use of three data structures, a <b>mapping</b>, <b>struct</b> and an <b>array</b>.

We use the mapping to track associations with a user profile that is created as a custom data structure using a struct.

The array allows iterations on the user profiles, which maintains the order of elements stored.

****************************

<b>Mapping</b>

First we create our mapping:

<b>mapping(address => UserProfile) public profiles;</b>

In our mapping we are associating an address type to a UserProfile struct.

****************************

<b>Array</b>

We create an array:

<b>address[] public userList;</b>

The array is an address type called userList.

****************************

<b>Struct</b>

Create the following custom data structure:

 <b>   struct UserProfile {
        string name;
        uint age;
    }</b>

The struct defines a UserProfile that contains two data types:

<i>string name</i> : a string data type

<i>uint256 age</i> : an integer data type
  
****************************

The mapping <b>profiles</b> allows you to quickly look up a user's profile using their address.
The <b>userList</b> (an array) maintains the order in which users were added, allowing you to iterate through them.

****************************

<b>CONCLUSION</b>

using a <i>mapping</i> for efficient storage and an <i>array</i> for ordered iteration in the same contract is indeed a best practice for many scenarios in Solidity. 
It allows you to optimize for both quick data access and the ability to process collections of data in a specific order.



