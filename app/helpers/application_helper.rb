# -*- coding: utf-8 -*-
module ApplicationHelper
  def menu_data
    ret = {:data => '菜单树', :attr => {:id => 'menu_data_root'}, :metadata => {:id => 'root0'}, :children => []}
    ret[:children] = User.all.collect{|r| {:data => {:title => r.email, :attr => {:href => "/sheets/#{r.id}/edit"}}}}
    ret.to_json
  end

  def get_page_position
    "p1--p2==p3 Appliction_helper:get_page_position"
  end

  def get_page_title
    @page_title.present? ? @page_title : (I18n.t(action_name) + ": " + I18n.t('activerecord.models.' + controller_name.singularize))
  end

end
