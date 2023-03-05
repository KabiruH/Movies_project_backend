class CreateMovies < ActiveRecord::Migration[6.1]
  def change

    create_table :movies do |t|

      t.string :title
      t.integer :year
      t.string :description
      t.string :image_url
      t.integer :user_id
    end

  end
end
