class CreatePhots < ActiveRecord::Migration[5.2]
  def change
    create_table :phots do |t|
      t.string :image
      t.string :content

      t.timestamps
    end
  end
end
