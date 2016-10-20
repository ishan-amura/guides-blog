class DropCoders < ActiveRecord::Migration
  def change
  	drop_table :coders
  	drop_table :skills
  end
end
