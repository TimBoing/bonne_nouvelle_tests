class CreateDocus < ActiveRecord::Migration[5.2]
  def change
    create_table :docus do |t|

      t.string :title
      t.text :synopsis
      t.string :realisator
      t.string :duration
      t.string :year
      t.text :casting
      t.text :generique
      t.text :technical_mentions
      t.text :festivals
      t.timestamps
    end
  end
end
