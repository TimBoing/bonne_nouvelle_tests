class AddIndToFictions < ActiveRecord::Migration[5.2]
  def change
    add_column :fictions, :ind, :integer
  end
end
