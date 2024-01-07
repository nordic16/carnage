# frozen_string_literal: true

class NavbarFieldComponent < ViewComponent::Base
  def initialize(icon:, title: "", active: true, href:)
    @icon = icon
    @title = title
    @active = active
    @href = href
  end

end
