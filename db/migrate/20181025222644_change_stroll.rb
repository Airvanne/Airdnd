class ChangeStroll < ActiveRecord::Migration[5.2]
  def change
    change_table :strolls do |t|
      t.belongs_to :dog
    end
  end
end
