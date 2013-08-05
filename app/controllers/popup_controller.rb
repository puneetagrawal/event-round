class PopupController < ApplicationController
  def events_around_me
  end

  def homepage

    respond_to do |format|
      format.html
      format.js
    end
  end

  def signup
  end
end
