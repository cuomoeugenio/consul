class CreateWidgetFeeds < ActiveRecord::Migration
  def change
    create_table :widget_feeds do |t|
      t.references :feedable, polymorphic: true
    end
  end
end
