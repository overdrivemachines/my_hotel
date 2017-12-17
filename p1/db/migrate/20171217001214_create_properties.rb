class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.time :check_in_at
      t.time :check_out_at
      t.boolean :night_audit_auto
      t.time :night_audit_time
      t.string :night_audit_emails
      t.boolean :print_reg_cards_auto

      t.timestamps
    end
  end
end
