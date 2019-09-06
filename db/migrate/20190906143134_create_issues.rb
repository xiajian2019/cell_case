class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|

      t.string :title, null: false
      t.string :state, null: false
      t.references :pull_request

      t.timestamps null: false
    end
  end
end
