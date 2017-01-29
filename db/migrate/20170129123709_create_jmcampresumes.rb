class CreateJmcampresumes < ActiveRecord::Migration[5.0]
  def change
    create_table :jmcampresumes do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
