# rubocop : disable Layout/EndOfLine

class PagesController < ApplicationController
  def home
    redirect_to events_path if logged_in?
  end
end

# rubocop : enable Layout/EndOfLine
