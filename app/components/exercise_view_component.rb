# frozen_string_literal: true

class ExerciseViewComponent < ViewComponent::Base
  def initialize(title:, muscleGroup:, emphasis:, bg_color:, fg_color:, bg_color_hover:)
    @title = title
    @muscleGroup = muscleGroup
    @emphasis = emphasis
    @bg_color = bg_color
    @fg_color = fg_color
    @bg_color_hover = bg_color_hover

    # color = bg_color[0..(bg_color.length - 5)]
    # intensity = bg_color[(bg_color.length - 3)..(bg_color.length - 1)].to_i
  
    # @bg_color_hover = "#{color}-#{intensity - 150}"

  end

end
