# == Schema Information
#
# Table name: properties
#
#  id                   :integer          not null, primary key
#  name                 :string
#  address1             :string
#  address2             :string
#  city                 :string
#  state                :string
#  zip                  :string
#  phone                :string
#  fax                  :string
#  email                :string
#  check_in_at          :time
#  check_out_at         :time
#  night_audit_auto     :boolean
#  night_audit_time     :time
#  night_audit_emails   :string
#  print_reg_cards_auto :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

# TODO: complete validations
class Property < ApplicationRecord
	before_save :default_values

	validates :name, presence: true, length: 2..50
	validates :address1, presence: true, length: 2..50
	validates :city, presence: true, length: 2..50
	validates :state, presence: true, length: 2..50
	validates :zip, presence: true, length: 2..20
	validates :phone, presence: true, length: {minimum: 2}
	validates :email, presence: true, length: {minimum: 2}
	validates :check_in_at, presence: true
	validates :check_out_at, presence: true
	# validates :night_audit_auto, presence: true
	validates :night_audit_time, presence: true
	validates :night_audit_emails, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
	# validates :print_reg_cards_auto, presence: true

	def default_values
		if (self.night_audit_auto == nil)
			self.night_audit_auto = false
		end
		if (self.print_reg_cards_auto == nil)
			self.night_audit_auto = false
		end
	end
end
