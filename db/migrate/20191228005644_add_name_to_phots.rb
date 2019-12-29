class AddNameToPhots < ActiveRecord::Migration[5.2]
  def change
    add_column :phots, :name, :string
  end
end
