class CreatePlatosController < ActiveRecord::Migration[6.1]
  def change
    create_table :platos_controllers do |t|

      t.timestamps
    end
  end
end
