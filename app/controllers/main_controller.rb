# -*- coding: utf-8 -*-
class MainController < ApplicationController
  def index
  end

  # TODO: will change Sheet0 to user's model'
  def search
    if params[:search][:key]
      @sheet0s = Sheet0.search{ fulltext params[:search][:key] }.results
    else
      render :text => '请输入搜索关键词' and return
    end

    respond_to do |format|
      format.html { render :file => 'sheet0s/index'}
      format.json { render json: @recs }
    end
  end
end
