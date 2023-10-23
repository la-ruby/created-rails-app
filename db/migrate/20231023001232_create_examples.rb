class CreateExamples < ActiveRecord::Migration[7.1]
  def change
    create_table :examples do |t|
      t.string :title
      t.text :body
      t.boolean :seed

      t.timestamps
    end
  end
end
