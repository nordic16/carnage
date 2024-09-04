# frozen_string_literal: true

class NavbarFieldComponent < ViewComponent::Base
  def initialize(title: "", active: true, href:)
    @title = title
    @active = active
    @href = href
  end

end
