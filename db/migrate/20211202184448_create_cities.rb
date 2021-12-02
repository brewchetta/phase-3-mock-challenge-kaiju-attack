class CreateCities < ActiveRecord::Migration[6.1]
  def change
    t.string :name
    t.string :population
  end
end
