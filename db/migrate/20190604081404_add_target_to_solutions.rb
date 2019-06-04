class AddTargetToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :target, :string
  end
end
