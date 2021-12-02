class CreateKaijus < ActiveRecord::Migration[6.1]
  def change
    create_table :kaijus do |t|
      t.string :name
      t.string :powers
    end
  end
end
