class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :auther_name
      t.text :body
      t.references :article

      t.timestamps null: false
    end
  end
end
