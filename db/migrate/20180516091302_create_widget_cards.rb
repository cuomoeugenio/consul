class CreateWidgetCards < ActiveRecord::Migration
  def change
    create_table :widget_cards do |t|
      t.string :title
      t.text :description
      t.string :link_text
      t.string :link_url
    end
  end
end
