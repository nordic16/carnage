# frozen_string_literal: true

class DialogComponent < ViewComponent::Base
  def initialize(title:, close_button_text:)
    @close_button_text = close_button_text
    @title = title  
  end

end
