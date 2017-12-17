# Hotel Front Desk Software

This project will be broken down to smaller projects for simplicity.

## P1

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


## P2

## P3

## P4

## P5

## P6

## P7

## P8