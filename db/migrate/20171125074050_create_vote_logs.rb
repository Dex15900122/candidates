class CreateVoteLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_logs do |t|
      t.references :candidate
      t.string :ip_address

      t.timestamps
    end
  end
end
