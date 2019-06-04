class AddFileToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :file, :string
  end
end
