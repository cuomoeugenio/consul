class CreateFeedable < ActiveRecord::Migration
  def change
    create_table :feedables do |t|
      t.string :kind
    end
  end
end
