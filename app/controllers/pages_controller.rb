class PagesController < ApplicationController
  def home
    @posts = Candidate.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
