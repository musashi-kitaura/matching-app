class CreateCommunityUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :community_users do |t|
      t.references :user
      t.references :community
      t.timestamps
    end
  end
end
