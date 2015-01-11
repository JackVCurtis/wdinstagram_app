class AddEntriesCaption < ActiveRecord::Migration
  def change
    change_table :entries do |t|
      t.string :caption
    end
  end
end
