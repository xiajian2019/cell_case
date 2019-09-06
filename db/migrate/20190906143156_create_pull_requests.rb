class CreatePullRequests < ActiveRecord::Migration
  def change
    create_table :pull_requests do |t|
      t.timestamp :merged_at
      t.boolean :draft, null: false, default: false

      t.timestamps null: false
    end
  end
end
