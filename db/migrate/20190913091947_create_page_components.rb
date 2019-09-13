class CreatePageComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :page_components, comment: '页面组件关联表' do |t|
      t.integer :page_id, comment: '关联页面'
      t.integer :component_id, comment: '关联组件'
      t.integer :seq, comment: '顺序'
      t.text :config, comment: '针对特定页面的特定配置'

      t.timestamps

      t.index [:page_id, :component_id, :seq], unique: true, name: 'unique_index_for_page_comment'
    end
  end
end