// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.16 <0.9.0;

contract OrgContract{

   struct Ledger_data{
       string fieldname;
       string value;
   }

   mapping(address => Ledger_data[]) org_data;

   function Create_ledger(Ledger_data[] memory ledger) public {
       require(msg.sender.balance > 0 , "You may not have enough funds.");
       for (uint i=0; i<ledger.length; i++) {
           org_data[msg.sender].push(ledger[i]);
       } 

   }

   function Getledger() public view returns(Ledger_data[] memory){
        return org_data[msg.sender];
   }

}