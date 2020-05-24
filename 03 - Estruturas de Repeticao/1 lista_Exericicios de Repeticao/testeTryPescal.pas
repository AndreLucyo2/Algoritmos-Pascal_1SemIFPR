Program Pzim ;
{$codepage UTF8}
{$IOCHECKS ON}
 uses crt, sysutils;

var
  Z,cont, resultado, numero : Integer;
  
Begin


						   
     	  


			try
			   Z := DoDiv (X,Y);  

			except
			// will only be executed in case of an exception
			 On EDivException do Z := 0; 
			end;
      
      
End.