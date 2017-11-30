class PagesController < ApplicationController
  def home
    @posts = Candidate.all
  end

  def about
  end

  def contact
  end
end
