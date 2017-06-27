class CreateNottodos < ActiveRecord::Migration[5.0]
  def change
    create_table :nottodos do |t|
      t.string :name
      t.string :champion

      t.timestamps
    end
  end
end
