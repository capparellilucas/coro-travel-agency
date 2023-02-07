class RenameRefferalsToReferrals < ActiveRecord::Migration[7.0]
  def change
    rename_table :refferals, :referrals
  end
end
