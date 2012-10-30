class AddAttachmentsBeneficiaryPhotoToBeneficiary < ActiveRecord::Migration
  def self.up

    add_column :beneficiaries, :beneficiary_photo_file_name, :string
    add_column :beneficiaries, :beneficiary_photo_content_type, :string
    add_column :beneficiaries, :beneficiary_photo_file_size, :integer
    add_column :beneficiaries, :beneficiary_photo_updated_at, :datetime
    add_column :beneficiaries, :help_type_id, :integer

  end

  def self.down

    remove_column :beneficiaries, :beneficiary_photo_file_name
    remove_column :beneficiaries, :beneficiary_photo_content_type
    remove_column :beneficiaries, :beneficiary_photo_file_size
    remove_column :beneficiaries, :beneficiary_photo_updated_at
    remove_column :beneficiaries, :help_type_id

  end
end
