class AddAcronymIdToDefinition < ActiveRecord::Migration
  def change
    add_column :definitions, :acronym_id, :integer
  end
end
