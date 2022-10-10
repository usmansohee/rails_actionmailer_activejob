class AddWelcomeStatus < ActiveRecord::Migration[7.0]
  def change
    change_table :users do
      add_column(:users, :welcome_mail, :boolean)
    end

  end
end
