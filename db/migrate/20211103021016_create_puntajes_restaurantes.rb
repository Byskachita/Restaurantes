class CreatePuntajesRestaurantes < ActiveRecord::Migration[6.1]
  def change
    create_table :puntajes_restaurantes do |t|

      t.timestamps
    end
  end
end
