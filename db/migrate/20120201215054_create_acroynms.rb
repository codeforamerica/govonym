class CreateAcroynms < ActiveRecord::Migration
  def change
    create_table :acroynms do |t|
      t.string :name

      t.timestamps
    end
  end
end
