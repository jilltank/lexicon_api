class CreateLexicons < ActiveRecord::Migration
  def change
    create_table :lexicons do |t|
      t.string :code
      t.string :description
      t.string :category
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
