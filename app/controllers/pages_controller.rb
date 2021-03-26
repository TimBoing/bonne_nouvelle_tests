class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :fiction,:documentaires,:publicites,:apropos,:contact  ]

  def home
    @articles = Article.all
    @active = false
  end

  def fiction
    @fictions = Fiction.all
    @years = @fictions.map{|f| f.year.to_i}
    @years = @years.uniq
    @years.sort!{ |a,b| b <=> a }
    @toggler = true
  end

  def documentaires
    @docus = Docu.all
    @years = @docus.map{|f| f.year.to_i}
    @years = @years.uniq
    @years.sort!{ |a,b| b <=> a }
    @toggler = true
  end

  def publicites
    @pubs = Pub.all
    @years = @pubs.map{|f| f.year.to_i}
    @years = @years.uniq
    @years.sort!{ |a,b| b <=> a }
    @toggler = true
  end

  def apropos
  end

  def contact
    @site_contact = SiteContact.new

  end

  def timtools
  end

end


