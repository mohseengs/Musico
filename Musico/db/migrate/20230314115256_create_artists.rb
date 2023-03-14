class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.string :password

      t.timestamps
    end
  end
end
