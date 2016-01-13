class AddStateIdToCities < ActiveRecord::Migration
  def change
    add_reference :cities, :state, index: true, foreign_key: true
    change_column_null :cities, :state_id, false
  end
end
