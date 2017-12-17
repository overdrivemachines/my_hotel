# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Property.new
p.name = Faker::Company.name
p.address1 = Faker::Address.street_address
p.address2 = ""
p.city = Faker::Address.city
p.state = Faker::Address.state
p.zip = Faker::Address.zip
p.phone = Faker::PhoneNumber.phone_number
p.fax = Faker::PhoneNumber.phone_number
p.email = Faker::Internet.email
p.check_in_at = "15:00"
p.check_out_at = "11:00"
p.night_audit_auto = [true, false].sample
p.night_audit_time = "04:00"
p.night_audit_emails = Faker::Internet.email
p.print_reg_cards_auto = [true, false].sample