C_POINTER:C301($ptr)

// update font in selection
$ptr:=OBJECT Get pointer:C1124(Object subform container:K67:4)
If (Not:C34(Is nil pointer:C315($ptr)))
	If (OB Is defined:C1231($ptr->; "areaPointer"))
		$ptr:=OB Get:C1224($ptr->; "areaPointer")
		ST INSERT EXPRESSION:C1281($ptr->; "$wp_pageCount")
	End if 
End if 