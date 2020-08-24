class ApplicationHelper::Button::CloudVolumeSafeDelete < ApplicationHelper::Button::ButtonNewDiscover
  def disabled?
    # Cloud-volumes can be under storage-manager or cloud-manager.
    # If the action safe_delete is supported by one of the managers return false.
    action_not_supported_for_storage_managers? & action_not_supported_for_cloud_managers?
  end

  private

  # If the action safe_delete is supported by one of the storage-managers return false.
  def action_not_supported_for_storage_managers?
    ManageIQ::Providers::StorageManager.none? do |ems|
      "#{ems.class}::CloudVolume".safe_constantize&.supports?(:safe_delete)
    end
  end

  # If the action safe_delete is supported by one of the cloud-managers return false.
  def action_not_supported_for_cloud_managers?
    ManageIQ::Providers::CloudManager.none? do |ems|
      "#{ems.class}::CloudVolume".safe_constantize&.supports?(:safe_delete)
    end
  end
end
