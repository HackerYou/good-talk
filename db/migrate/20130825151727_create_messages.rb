class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author_name
      t.string :body

      t.timestamps
    end
  end
end
