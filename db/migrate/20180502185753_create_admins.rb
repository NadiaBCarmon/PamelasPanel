class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
    	t.string :admin_email
    	t.string :admin_password
    end
  end
end
