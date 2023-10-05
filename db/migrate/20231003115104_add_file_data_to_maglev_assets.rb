# frozen_string_literal: true

class AddFileDataToMaglevAssets < ActiveRecord::Migration[7.0]

  def change
    add_column :maglev_assets, :file_data, :jsonb
  end

end
