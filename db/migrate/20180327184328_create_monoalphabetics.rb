class CreateMonoalphabetics < ActiveRecord::Migration[5.0]
  def change
    create_table :monoalphabetics do |t|

      t.timestamps
    end
  end
end
