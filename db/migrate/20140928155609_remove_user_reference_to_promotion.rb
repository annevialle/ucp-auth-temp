class RemoveUserReferenceToPromotion < ActiveRecord::Migration
  def change
    remove_column :promotions, :user_id
  end
end
