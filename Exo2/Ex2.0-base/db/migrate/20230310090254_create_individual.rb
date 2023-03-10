class CreateIndividual < ActiveRecord::Migration[6.1]
  def change
    create_table :individuals do |t|
      t.string :firstname
      t.string :lastname
    end
  end
end
