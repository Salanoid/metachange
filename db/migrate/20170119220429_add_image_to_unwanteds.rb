class AddImageToUnwanteds < ActiveRecord::Migration[5.0]
  def change
    add_column :unwanteds, :image, :string
  end
end
