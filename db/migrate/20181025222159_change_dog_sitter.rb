class ChangeDogSitter < ActiveRecord::Migration[5.2]
  def change
    change_table :dog_sitters do |t|
      t.belongs_to :dogs
    end

    change_table :dogs do |t|
      t.belongs_to :dog_sitters
    end
  end
end
