class CreateAtbashes < ActiveRecord::Migration[5.0]
  def change
    create_table :atbashes do |t|

      t.timestamps
    end
  end
end
