class PagesController < ApplicationController
  def home
    @athlete = Athlete.all.sample
  end
end
