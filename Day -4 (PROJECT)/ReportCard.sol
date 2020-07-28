pragma solidity ^0.4.17;

contract ReportCard{
    string public RollNo;
    string public Name;
    string public batch;
    uint public maths_marks;
    uint public chemistry_marks;
    uint public physics_marks;
    uint public english_marks;
    
    function StudentReportCard(string newRollNo,string newName,string newbatch,uint newmaths_marks,uint newchemistry_marks,uint newphysics_marks,uint newenglish_marks)public{
       RollNo=newRollNo;
       Name=newName;
       batch=newbatch;
       maths_marks=newmaths_marks;
       chemistry_marks=newchemistry_marks;
       physics_marks=newphysics_marks;
       english_marks=newenglish_marks;
       
    }
    
    function getStudentReportDetails()public view returns(string,string,string,uint,uint,uint,uint){
        return(RollNo,Name,batch,maths_marks,chemistry_marks,physics_marks,english_marks);
    }
    
    function Result_Status()public view returns(string){
        if (maths_marks>45 && chemistry_marks>45 && physics_marks>45 && english_marks>45)
        {
            return "Pass";
            
        }
        else
        {
            return "Fail";
        }
    }
}