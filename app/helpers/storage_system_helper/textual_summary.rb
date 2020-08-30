# todo [liran] - need to be refactor to use our SdeManager. more info in https://www.manageiq.org/docs/guides/ui/textual_summary

module StorageSystemHelper::TextualSummary


  include TextualMixins::TextualGroupTags

  #
  # Groups
  #

  def textual_group_properties
    TextualGroup.new(
        _("Properties"),
        %i[
          name
          ems_name
          management_ip
          storage_family
          system_type
        ]
    )
  end

  #
  # Items
  #

  def textual_system_type
    {:label => _("System Type"), :value => @record.storage_system_type.name}
  end

  def textual_name
    {:label => _("Name"), :value => @record.name}
  end

  def textual_ems_name
    {:label => _("EMS Name"), :value => @record.ext_management_system.name}
  end

  def textual_storage_family
    {:label => _("Storage Family"), :value => @record.storage_family}
  end

  def textual_management_ip
    {:label => _("Management IP"), :value => @record.management_ip}
  end
end
