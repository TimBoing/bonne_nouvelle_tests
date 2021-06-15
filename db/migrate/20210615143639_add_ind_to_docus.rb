class AddIndToDocus < ActiveRecord::Migration[5.2]
  def change
    add_column :docus, :ind, :integer
  end
end
