class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def fiction
    @fictions = Fiction.all
    @years = @fictions.map{|f| f.year.to_i}
    @years = @years.uniq
    @years.sort!{ |a,b| b <=> a }
    @toggler = true
  end

  def documentaires
  end

  def publicites
  end

  def apropos
  end

  def contact
    @site_contact = SiteContact.new

  end

  def timtools
  end

end

