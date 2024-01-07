# frozen_string_literal: true

class NavbarFieldComponent < ViewComponent::Base
  def initialize(icon:, title: "", active: true)
    @icon = icon
    @title = title
    @active = active
  end

end
