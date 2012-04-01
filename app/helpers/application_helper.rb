# -*- coding: utf-8 -*-
module ApplicationHelper
  def menu_data
    ret = {:data => '菜单树', :attr => {:id => 'menu_data_root'}, :metadata => {:id => 'root0'}, :children => []}
    ret[:children] = User.all.collect{|r| {:data => {:title => r.email, :attr => {:href => "/sheets/#{r.id}/edit"}}}}
    ret.to_json
  end
end
