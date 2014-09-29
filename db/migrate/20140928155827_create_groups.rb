class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :user, index: true
      t.references :promotion, index: true

      t.timestamps
    end
  end
end
