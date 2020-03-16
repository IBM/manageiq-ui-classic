# todo [liran] - need to be refactor to use our SdeManager. more info in https://www.manageiq.org/docs/guides/ui/textual_summary

module StorageResourceHelper::TextualSummary


  include TextualMixins::TextualGroupTags

  #
  # Groups
  #

  def textual_group_properties
    TextualGroup.new(
        _("Properties"),
        %i[
          name
          logical_free
          logical_total
        ]
    )
  end

  def textual_group_relationships

  end

  #
  # Items
  #

  def textual_name
    {:label => _("Name"), :value => @record.name}
  end

  def textual_logical_free
    {:label => _("Usage (%)"), :value => @record.logical_free}
  end

  def textual_logical_total
    {:label => _("Total Size"), :value => @record.logical_total}
  end
end
