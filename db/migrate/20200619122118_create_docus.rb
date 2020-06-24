class CreateDocus < ActiveRecord::Migration[5.2]
  def change
    create_table :docus do |t|

      t.timestamps
    end
  end
end
