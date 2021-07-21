class AddContactToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :contact, :string
  end
end
