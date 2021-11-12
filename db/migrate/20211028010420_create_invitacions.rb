class CreateInvitacions < ActiveRecord::Migration[6.1]
  def change
    create_table :invitacions do |t|
      t.string :mensaje
      t.date :fecha
      t.references :usuarios,   null: false, foreign_key: true
      t.references :restaurantes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
