class CreateKoubeiGates < ActiveRecord::Migration[5.0]
  def change
    create_table :koubei_gates do |t|
      t.string :partner_id
      t.string :notify_pid
      t.date :notify_time
      t.string :shop_id
      t.string :status
      t.string :sign_type
      t.string :sign
      t.string :display_status
      t.string :notify_type
      t.string :update_time
      t.string :create_time
      t.string :action
      t.string :notify_id

      t.timestamps
    end
  end
end
