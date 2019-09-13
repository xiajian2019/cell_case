class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components, comment: '组件' do |t|
      t.string :name, comment: '组件名'
      t.string :code, limit: 50, comment: '组件编码'
      t.string :description, comment: '描述'
      t.text :config

      t.timestamps

      t.index :code, unique: true
    end
  end
end
