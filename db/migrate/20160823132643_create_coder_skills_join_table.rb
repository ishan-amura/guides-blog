class CreateCoderSkillsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :coders, :skills do |t|
      # t.index [:coder_id, :skill_id]
      # t.index [:skill_id, :coder_id]
    end
  end
end
