//%attributes = {"invisible":true}
  // modifiée le 10/oct 2018 par RL
  // ACI0098592

C_LONGINT:C283($grey)
$grey:=0x00808080
  //$white:=0x00FFFFFF
  //$darkGrey:=0x00585858
  //$lightGrey:=0x00C0C0C0

C_LONGINT:C283($typeSelection)
$typeSelection:=Form:C1466.selection.type


Case of 
		
	: ($typeSelection=2)  // static picture
		OBJECT SET ENABLED:C1123(*;"@";False:C215)
		OBJECT SET ENTERABLE:C238(*;"@";False:C215)
		
	: ($typeSelection=0)
		OBJECT SET ENABLED:C1123(*;"@";True:C214)
		OBJECT SET ENTERABLE:C238(*;"@";True:C214)
		
		If (areaName#"") & (areaName=OBJECT Get name:C1087(Object with focus:K67:3))
			
			
			  //OBJECT SET RGB COLORS(*;"lbl_Insert";0;Background color)
			  //OBJECT SET RGB COLORS(*;"lbl_Expression";0;Background color)
			  //OBJECT SET RGB COLORS(*;"lbl_Label";0;Background color)
			  //OBJECT SET RGB COLORS(*;"lbl_URL";0;Background color)
			
			  //OBJECT SET RGB COLORS(*;"URLlabel";0;Background color)
			  //OBJECT SET RGB COLORS(*;"URLurl";0;Background color)
			
			  //OBJECT SET RGB COLORS(*;"Expression";0;Background color)
			
			OBJECT SET ENABLED:C1123(*;"btnDate";True:C214)
			OBJECT SET ENABLED:C1123(*;"btnExpression";True:C214)
			OBJECT SET ENABLED:C1123(*;"btnCompute";True:C214)
			OBJECT SET ENABLED:C1123(*;"btnFreeze";True:C214)
			OBJECT SET ENABLED:C1123(*;"btnURL";True:C214)
			
			OBJECT SET ENABLED:C1123(*;"rbValues";True:C214)
			OBJECT SET ENABLED:C1123(*;"rbExpressions";True:C214)
			OBJECT SET ENABLED:C1123(*;"rbScopeSelection";True:C214)
			
			  //OBJECT SET ENTERABLE(*;"Expression";True)
			  //OBJECT SET ENTERABLE(*;"URLlabel";True)
			  //OBJECT SET ENTERABLE(*;"URLurl";True)
			
		End if 
		
End case 

  // Never enterable ACI0098592
  //OBJECT SET ENTERABLE(*;"Expression";False) // RL 2019/12/02
OBJECT SET ENTERABLE:C238(*;"VirtualExpression";False:C215)  // RL 2019/12/02
