class CreateTerms < ActiveRecord::Migration[6.1]
  def change
    create_table :terms do |t|
      t.string :name
      t.integer :end_term
      t.text :other_et
      t.text :definition

      t.timestamps
    end
  end
end
