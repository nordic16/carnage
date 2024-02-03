# frozen_string_literal: true

class ExerciseViewComponent < ViewComponent::Base
  def initialize(title:, muscleGroup:, emphasis:)
    @title = title
    @muscleGroup = muscleGroup
    @emphasis = emphasis
  end

end
