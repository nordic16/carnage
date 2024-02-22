module GlobalHelper
  def update_exercise_page
    render turbo_stream: 
      turbo_stream.replace('exercise',
        locals: {})
  end
end
