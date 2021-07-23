class AddDesignationToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :designation, :string
  end
end
