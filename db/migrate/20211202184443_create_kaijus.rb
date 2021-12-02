class CreateKaijus < ActiveRecord::Migration[6.1]
  def change
    t.string :name
    t.string :powers
  end
end
