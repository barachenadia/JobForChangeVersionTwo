class AddColumnsToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :provider, :string
    add_column :candidates, :uid, :string
  end
end
