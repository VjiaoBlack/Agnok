class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

      t.timestamps
      t.attachment :video
      t.string :name
    end
  end
end
