class RemovePageFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :Page, :string
  end
end
