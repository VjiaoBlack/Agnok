class CreateEverything < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.text :description

      t.references :forum, index: true

      t.timestamps
    end

    create_table :topics do |t|
      t.string :name
      t.text :description

      t.references :category, index: true

      t.timestamps
    end

    create_table :discussions do |t|
      t.string :name
      t.text :description

      t.references :topic, index: true

      t.timestamps
    end

    create_table :comments do |t|
      t.text :body

      t.references :discussion, index: true
      t.references :user, index: true

      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest


      t.timestamps
    end


  end
end
