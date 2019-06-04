class AddCategoryToProblems < ActiveRecord::Migration[5.2]
  def change
    add_reference :problems, :category, foreign_key: true
  end
end
