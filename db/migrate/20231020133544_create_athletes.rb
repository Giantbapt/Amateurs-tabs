class CreateAthletes < ActiveRecord::Migration[7.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :wiki

      t.timestamps
    end
  end
end
