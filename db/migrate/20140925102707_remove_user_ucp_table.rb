class RemoveUserUcpTable < ActiveRecord::Migration
  def change 
    drop_table :user_ucps
  end
end
