class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home

  end

  def fiction
  end

  def documentaires
  end

  def publicites
  end

  def apropos
  end

  def contact
  end

end
