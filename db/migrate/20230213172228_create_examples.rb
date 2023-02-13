class CreateExamples < ActiveRecord::Migration[7.0]
  def change
    create_table :examples do |t|
      t.string :title
      t.text :body
      t.boolean :seed

      t.timestamps
    end
  end
end
