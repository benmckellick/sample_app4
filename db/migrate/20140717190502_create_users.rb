class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :has_many
      t.tweets, :
      t.string :belongs_to
      t.user :

      t.timestamps
    end
  end
end
