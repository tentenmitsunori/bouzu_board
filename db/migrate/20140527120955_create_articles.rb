class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true
      t.references :board, index: true
      t.text :content

      t.timestamps
    end
  end
end
