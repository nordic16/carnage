# frozen_string_literal: true

class AboutPageFieldComponent < ViewComponent::Base
  def initialize(title:, contents:)
    @title = title
    @contents = contents
  end

end
