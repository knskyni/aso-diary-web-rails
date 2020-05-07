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

  end
end
