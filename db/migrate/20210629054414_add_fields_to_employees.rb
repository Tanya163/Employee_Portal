class AddFieldsToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :name, :string
    add_column :employees, :DOB, :date
    add_column :employees, :admin, :boolean, default: false
  end
end
