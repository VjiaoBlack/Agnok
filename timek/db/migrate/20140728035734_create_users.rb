class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :users_circles, id: false do |t|
      t.belongs_to :user
      t.belongs_to :circle
    end

    create_table :circles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :circles_blocks, id: false do |t|
      t.belongs_to :circle
      t.belongs_to :block
    end

    create_table :blocks do |t|
      t.belongs_to :schedule
      t.integer :time_start
      t.integer :duration_mins
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :schedules do |t|
      t.belongs_to :user
      t.string :name
      t.text :description

      t.timestamps

    end

  end
end
