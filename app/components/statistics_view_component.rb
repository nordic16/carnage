# frozen_string_literal: true

class StatisticsViewComponent < ViewComponent::Base
  def initialize(topText:, midText:, bottomText:, bg:"bg-white", fg:"text-gray-100")
    @topText = topText
    @midText = midText
    @bottomText = bottomText
    @bg = bg
    @fg = fg
  end

end
