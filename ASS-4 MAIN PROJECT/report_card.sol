ROPSTEN TRANSACTION LINK: https://ropsten.etherscan.io/tx/0x080f33d1027324c58dc6420d55503ba95af77a8cd22a4194ddea4911d7de9b94

//DETAILS
status 	true Transaction mined and execution succeed
 transaction hash 	0x080f33d1027324c58dc6420d55503ba95af77a8cd22a4194ddea4911d7de9b94
 from 	0x17E2E0Ba4d079c056d9C9C71f085167c5F0F29fb
 to 	reportCard.(constructor)
 gas 	486514 gas 
 transaction cost 	486514 gas 



pragma solidity >=0.4.17 <0.7.0;

contract reportCard {
    
    string name;
    uint rollno;
    string batch;
    uint marks1;
    uint marks2;
    uint marks3;
    uint marks4;
    uint result;
    string status;
    
    function reportCard(string name1, uint rollno1, string batch1, uint marksq1, uint marksq2, uint marksq3, uint marksq4 ) public {
        
        name = name1;
        rollno = rollno1;
        batch = batch1;
        marks1 = marksq1;
        marks2 = marksq2;
        marks3 = marksq3;
        marks4 = marksq4;
        
        result = marks1 + marks2 + marks3 + marks4;
        result = result * 100/400;
        
         if( result < 40)
            status = "fail";
            
        else if(result >= 40)
            status = "pass";
    }
    
    function getdetails() public view returns(string, uint, string, uint, uint, uint, uint, uint, string){
        return (name, rollno, batch, marks1, marks2, marks3, marks4, result, status);
    }
}
