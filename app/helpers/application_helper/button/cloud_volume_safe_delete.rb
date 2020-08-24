class ApplicationHelper::Button::CloudVolumeSafeDelete < ApplicationHelper::Button::ButtonNewDiscover
  def disabled?
    ManageIQ::Providers::StorageManager.none? do |ems|
      "#{ems.class}::CloudVolume".safe_constantize&.supports?(:safe_delete)
    end
  end
end
