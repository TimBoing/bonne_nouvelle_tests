class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :fiction,:documentaires,:publicites,:apropos,:contact, :promotion, :demotion  ]
  skip_before_action :verify_authenticity_token, only: [:promotion, :demotion]

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


  def promotion

    puts "----------------------------------------------------------------------------------------------------"
    puts "----------------------------------------------------------------------------------------------------"
    puts params

    if params[:type] == "fictions"
      element = Fiction.find(params[:id])
      element_ind = element.ind
      previous_element = Fiction.find_by(ind: element_ind - 1)

      unless previous_element == nil
        element.update(ind: previous_element.ind)
        previous_element.update(ind: element_ind)
      end
    end

    returned_hash = {ok: "ok"}
    render json: returned_hash.to_json

  end

  def demotion
  end

end


