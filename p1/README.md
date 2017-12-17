# Project 1

## Todo

- CRUD Property	
	$rails g scaffold Property 
	name address1 address2 city state zip phone fax email 
	check_in_at:time check_out_at:time 
	night_audit_auto:boolean night_audit_time:time night_audit_emails 
	print_reg_cards_auto:boolean 

- CRUD Room Type
	$rails g scaffold RoomType name code description property:references

- CRUD Room
	$rails g scaffold Room room_number:integer room_type:references location

## ERD Diagram

## Verions
ruby 2.4.3p205 (2017-12-14 revision 61247) [x86_64-linux]
Rails 5.1.4