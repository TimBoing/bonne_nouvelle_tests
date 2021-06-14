class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :fiction,:documentaires,:publicites,:apropos,:contact, :promotion, :demotion  ]
  skip_before_action :verify_authenticity_token, only: [:promotion, :demotion]

  def home
    @articles = Article.all
    @active = false
  end

  def fiction
    @fictions = Fiction.all.sort_by{|f| f.ind}
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
    if params[:type] == "fictions"
      elements = Fiction.all.sort_by{|f| f.ind}
      element = Fiction.find(params[:id])
    end

    element_ind = element.ind
    previous_elements = elements.select{|e| e.ind < element_ind && e.year == element.year}
    previous_element = previous_elements.blank? ? nil : previous_elements.last

    unless previous_element == nil
      element.update(ind: previous_element.ind)
      previous_element.update(ind: element_ind)
    end


    returned_hash = {ok: "ok"}
    render json: returned_hash.to_json

  end

  def demotion

    if params[:type] == "fictions"
      elements = Fiction.all.sort_by{|f| f.ind}
      element = Fiction.find(params[:id])
    end

    element_ind = element.ind
    next_elements = elements.select{|e| e.ind > element_ind && e.year == element.year}
    next_element = next_elements.blank? ? nil : next_elements.first

    unless next_element == nil
      element.update(ind: next_element.ind)
      next_element.update(ind: element_ind)
    end


    returned_hash = {ok: "ok"}
    render json: returned_hash.to_json
  end

end


