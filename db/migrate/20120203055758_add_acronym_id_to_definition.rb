class AddAcronymIdToDefinition < ActiveRecord::Migration
  def change
    add_column :definitions, :acroynm_id, :integer
  end
end
