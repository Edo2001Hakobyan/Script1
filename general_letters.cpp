#include <iostream>
std::string get_longer(std::string);
std::string get_smaller(std::string);
std::string get_general_letters(std::string,std::string);
int main()
{
      std::string mystr;
      std::cout<<"Enter a sentence:"<<std::endl;
      std::getline(std::cin,mystr);
      std::string returnvalue1 = get_smaller(mystr);
      std::string returnvalue2 = get_longer(mystr);
      std::cout<<"General letters is "<<get_general_letters(returnvalue1,returnvalue2)<<std::endl;
                return 0;
}

//Function that find longest word in sentence:
std::string get_longer(std::string s) 
{
	std::string longestWord = "";
	std::string currentWord = "";	

      for(int  i=0;s.length()>i;i++) {
	      if (s[i] == ' ') {
		      if(currentWord.length() > longestWord.length()) {
			      longestWord = currentWord;
		      }
		                currentWord = "";
	      }
	      else  {
		      currentWord += s[i];
	      }

           } 	
           // check last word      
	      if (currentWord.length() > longestWord.length()){
          	      longestWord=currentWord;
	 }
             return longestWord;	      
	
}

//Function that find smallest word in sentence:
std::string get_smaller(std::string s) 
{  
      std::string smallestWord = "";
      std::string currentWord = "";
      bool firstWord = true;
      for(int  i=0;s.length()>i;i++) {
	      if (s[i] == ' ') {
	              if (firstWord) {
			      smallestWord=currentWord;
				      firstWord=false;
		      }
	             else  if (currentWord.length() < smallestWord.length()) {
			      smallestWord = currentWord;
		      }
		                currentWord = "";
	      }
	      else  {
		      currentWord += s[i];
	      }
      }
           // check last word      
	      if (currentWord.length() < smallestWord.length()){
		      smallestWord=currentWord;
	     }
	      return smallestWord;

	
} 

//Function that find general symbols:
std::string get_general_letters(std::string a,std::string b)
{
 	
 std::string generalLetter = "";	
 for(int i=0; a.length()>i;i++) {
	 for(int j=0;j<b.length();j++) {
		  if ( a[i] == b[j]) {
			  generalLetter += a[i];
			    }
		  
		   }
 }
		  return generalLetter; 

}
	     
