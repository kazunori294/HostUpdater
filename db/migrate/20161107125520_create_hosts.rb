class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.string :uuid
      t.string :hostname
      t.string :hostgroup
      t.string :ipaddress
      t.string :network
      t.string :status

      t.timestamps
    end
  end
end
