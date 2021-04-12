class CreateEndTerms < ActiveRecord::Migration[6.1]
  def change
    create_table :end_terms do |t|
      t.integer :number
      t.integer :chapter
      t.text :definition

      t.timestamps
    end
    add_index :end_terms, :number, unique: true
  end
end
