class AddNotNullsToFields < ActiveRecord::Migration
  def change
    change_column_null :messages, :title, false 
    change_column_null :messages, :author, false 
    change_column_null :messages, :content, false
  end
end
