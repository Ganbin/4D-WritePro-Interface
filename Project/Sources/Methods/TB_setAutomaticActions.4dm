//%attributes = {"invisible":true}
#DECLARE($UItarget : Text)

var $applyTo : Text
var $range : Object

// Standard actions based on drop-down list
// read the "applyTo"
$applyTo:=UI_GetApplyTo



Case of 
		
	: ($UItarget="Margins")
		
		// page 3 of WP_toolbar, and WP_PaletteAlignments
		OBJECT SET ACTION:C1259(*; "popMarginLeft"; $applyTo+"/marginLeft")
		OBJECT SET ACTION:C1259(*; "popMarginRight"; $applyTo+"/marginRight")
		OBJECT SET ACTION:C1259(*; "popMarginTop"; $applyTo+"/marginTop")
		OBJECT SET ACTION:C1259(*; "popMarginBottom"; $applyTo+"/marginBottom")
		OBJECT SET ACTION:C1259(*; "popMarginAll"; $applyTo+"/margin")  // ALL (WP_PaletteAlignments)
		
	: ($UItarget="Paddings")
		
		// page 3 of WP_toolbar, and WP_PaletteFrames
		OBJECT SET ACTION:C1259(*; "popPaddingLeft"; $applyTo+"/paddingLeft")
		OBJECT SET ACTION:C1259(*; "popPaddingRight"; $applyTo+"/paddingRight")
		OBJECT SET ACTION:C1259(*; "popPaddingTop"; $applyTo+"/paddingTop")
		OBJECT SET ACTION:C1259(*; "popPaddingBottom"; $applyTo+"/paddingBottom")
		OBJECT SET ACTION:C1259(*; "popPaddingAll"; $applyTo+"/padding")  // ALL (WP_PaletteFrames)
		
	: ($UItarget="BordersAndRadius")
		
		// page 4 of WP_toolbar, and WP_PaletteFrames
		
		OBJECT SET ACTION:C1259(*; "btnBorderStyleNone"; $applyTo+"/borderStyle?value=none")
		OBJECT SET ACTION:C1259(*; "popRadius"; $applyTo+"/borderRadius")  // v19R5
		
	: ($UItarget="picturesAndTextboxes")
		
		$range:=Form:C1466.selection
		If ($range#Null:C1517)  // should always be the case
			
			If (Not:C34(Undefined:C82($range.container)))\
				 && (Not:C34(Undefined:C82($range.container.type)))\
				 && ($range.container.type=300)  // 300 = wk type text box
				$applyTo:="textBox"
			Else 
				$applyTo:="image"
			End if 
			
			// toolbar
			OBJECT SET ACTION:C1259(*; "btn_imageBehind"; $applyTo+"/anchorLayout?value=behind")
			OBJECT SET ACTION:C1259(*; "btn_imageInline"; $applyTo+"/anchorLayout?value=inline")
			OBJECT SET ACTION:C1259(*; "btn_imageInFront"; $applyTo+"/anchorLayout?value=front")
			
			OBJECT SET ACTION:C1259(*; "btn_imageAlignTop"; $applyTo+"/anchorVerticalAlign?value=Top")
			OBJECT SET ACTION:C1259(*; "btn_imageAlignMiddle"; $applyTo+"/anchorVerticalAlign?value=middle")
			OBJECT SET ACTION:C1259(*; "btn_imageAlignBottom"; $applyTo+"/anchorVerticalAlign?value=bottom")
			OBJECT SET ACTION:C1259(*; "btn_imageAlignLeft"; $applyTo+"/anchorHorizontalAlign?value=left")
			OBJECT SET ACTION:C1259(*; "btn_imageAlignCenter"; $applyTo+"/anchorHorizontalAlign?value=center")
			OBJECT SET ACTION:C1259(*; "btn_imageAlignRight"; $applyTo+"/anchorHorizontalAlign?value=right")
			
			// sidebar
			OBJECT SET ACTION:C1259(*; "Popup_anchorLayout"; $applyTo+"/anchorLayout")
			OBJECT SET ACTION:C1259(*; "Popup_anchorVerticalAlign"; $applyTo+"/anchorVerticalAlign")
			OBJECT SET ACTION:C1259(*; "Popup_anchorHorizontalAlign"; $applyTo+"/anchorHorizontalAlign")
			
			// both
			OBJECT SET ACTION:C1259(*; "btn_imageMoveToBack"; $applyTo+"/moveToBack")
			OBJECT SET ACTION:C1259(*; "btn_imageMoveToFront"; $applyTo+"/moveToFront")
			
		End if 
		
	Else 
		
		
End case 



