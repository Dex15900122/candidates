class AddCandidateIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :candidate_id, :interger
    add_index :posts, :candidate_id
  end
end
