class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages, comment: '页面' do |t|
      t.string :name, comment: '名称'
      t.string :code, limit: 50, comment: '页面编码'
      t.string :description, comment: '描述'
      t.text :config

      t.timestamps

      t.index :code, unique: true
    end
  end
end
