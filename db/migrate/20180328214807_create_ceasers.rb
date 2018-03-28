class CreateCeasers < ActiveRecord::Migration[5.0]
  def change
    create_table :ceasers do |t|

      t.timestamps
    end
  end
end
