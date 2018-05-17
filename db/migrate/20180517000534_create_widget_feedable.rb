class CreateWidgetFeedable < ActiveRecord::Migration
  def change
    create_table :widget_feedables do |t|
      t.string :kind
    end
  end
end
