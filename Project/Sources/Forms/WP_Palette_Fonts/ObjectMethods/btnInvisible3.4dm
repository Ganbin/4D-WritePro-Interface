
C_LONGINT:C283($color)
C_LONGINT:C283($style)

C_POINTER:C301($ptrStyleNames;$ptrStyleValues)

$color:=Call_CustomColorPalette (False:C215;"UnderlineColor")  // false means do not allow transparency"

If ($color=-1)
	  // do nothing
Else 
	OBJECT SET VISIBLE:C603(*;"MultiLineColor";False:C215)
	  //(OBJECT Get pointer(Object named;"cbUnderline"))->:=1
	oForm.cbUnderline:=1
	Case of 
			
		: ($color>=0)
			
			OBJECT SET RGB COLORS:C628(*;"UnderlineColor";$color;$color)
			
			$ptrStyleNames:=OBJECT Get pointer:C1124(Object named:K67:5;"underlineStylesNames")
			$ptrStyleValues:=OBJECT Get pointer:C1124(Object named:K67:5;"underlineStylesValues")
			If (($ptrStyleNames->)>0)
				$style:=$ptrStyleValues->{$ptrStyleNames->}
			Else 
				$style:=wk mixed:K81:89
			End if 
			
			WP_SetTextUnderline (Form:C1466.selection;$style;$color)
			
		: ($color=-2)  // other…
			
			OPEN COLOR PICKER:C1304
			GOTO OBJECT:C206(*;"UnderlineColor")  // gives the focus to the object that will manage the color…"
			
	End case 
End if 


