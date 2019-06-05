class AddPhotoToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :photo, :string
  end
end
