class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body
      t.string :author_name

      t.timestamps
    end
  end
end
