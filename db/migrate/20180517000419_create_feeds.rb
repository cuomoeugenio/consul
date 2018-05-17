class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.references :feedable, polymorphic: true
    end
  end
end
