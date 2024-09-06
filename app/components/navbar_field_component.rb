# frozen_string_literal: true

class NavbarFieldComponent < ViewComponent::Base
  def initialize(title: "", active: true, href:, method: :get)
    @title = title
    @active = active
    @href = href
    @method = method
  end

end
