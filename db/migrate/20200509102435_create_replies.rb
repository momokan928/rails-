class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.string :name
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
