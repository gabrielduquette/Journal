class AddAuthenticateBruteForceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :failed_logins_count, :integer, default: 0
    add_column :users, :lock_expires_at, :datetime, default: nil
  end
end
