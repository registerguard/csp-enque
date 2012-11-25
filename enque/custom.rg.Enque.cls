/// custom.rg.Enque
/// See <code>custom.rg.EnqueRule</code> for related code.
/// 
/// @docs https://github.com/registerguard/csp-enque
/// @copyright Copyright (c) 2012 Micky Hulse/The Register-Guard.
/// @license Released under the Apache License, Version 2.0.
/// http://www.apache.org/licenses/LICENSE-2.0
/// @version 1.0.0
/// @date Monday, November 24, 2012
Class custom.rg.Enque Extends %RegisteredObject
{

/// The <method>html</method> ClassMethod outputs <code>string</code> if it has not already been defined in <code>list</code>.
/// 
/// @see https://groups.google.com/d/topic/intersystems-public-cache/kZ5CJdjSuQU/discussion
/// 
/// @param list { %List } An empty $list or a $list with existing Base64Encoded values.
/// @param string { %String } The value to Base64Encode (required).
/// @param uglify { %Boolean } Boolean value to determine if the written output should be ugly or not.
/// @return { %List } A %List of Base64Encoded "string" parameters.
ClassMethod html(
	list As %List = "",
	string As %String = "",
	uglify As %Integer = 0) As %List
{
	
	; Uglify the string:
	set ugly = $zstrip($translate(string, $char(9, 10, 13)), "<>W") ; Trim leading/trailing spaces; remove horizontal tabs, line feeds and carriage returns.
	
	; Is it worth continuing?
	if ($length(ugly)) {
		
		; Base64 encode HTML:
		set encoded = $System.Encryption.Base64Encode(ugly)
		
		; Do we have a valid list?
		if ($listvalid(list) && $listlength(list)) { // The empty string ("") by itself is also considered a valid list.
			
			; Yes! Does the encoded value already exist in the $list?
			if ( ' $listfind(list, encoded)) {
				
				; Encoded HTML not found, so add the encoded HTML string to the $list:
				set list = list _ $listbuild(encoded)
				
				; Write the uglified or non-uglified HTML:
				write $case(uglify, 1:ugly, :string), !
				
			}
			
		} else {
			
			; No! Add the encoded HTML to the $list:
			set list = $listbuild(encoded)
			
			; Write the uglified or non-uglified HTML:
			write $case(uglify, 1:ugly, :string), !
			
		}
		
	}
	
	; Return the $list:
	quit list
}

}
