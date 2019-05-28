class AddCategoryToProblems < ActiveRecord::Migration[5.2]
  def change
    add_column :problems, :category, :string
  end
end
