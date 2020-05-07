class DiaryController < ApplicationController
  # get: /diary/index
  def index

  end

  # get: /diary/new
  def new
    @diary = Diary.new
  end

  # post: /diary/confirm
  def new_confirm
    @diary = Diary.new(student_id: @current_user.student_id)
    @diary.good_comment = params[:diary][:good_comment]
    @diary.bad_comment = params[:diary][:bad_comment]
    @diary.about_comment = params[:diary][:about_comment]

    if @diary.valid?
      session[:diary] = @diary
    else
      render("diary/new")
    end
  end

  # post: /diary/create
  def create

  end
end
