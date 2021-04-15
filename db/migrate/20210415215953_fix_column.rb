class FixColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :terms, :end_term, :main_et
  end
end
