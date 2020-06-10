class CreateSiteContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :site_contacts do |t|

      t.string :name
      t.string :address
      t.string :email
      t.string :tel
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
