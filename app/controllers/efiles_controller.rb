# -*- coding: utf-8 -*-
class EfilesController < ApplicationController
  before_filter :authenticate_user!

  active_scaffold :efile do |config|
# 使用i18n设置    config.label = "efile"
    config.list.columns.exclude :created_at
    config.actions = [:list, :create, :update, :delete, :show, :nested]

    config.columns[:status].form_ui = :select
    config.columns[:status].options = {:options => APP_STATUS}
    config.nested.add_link "添加附件", [:attachements]

    config.create.label = "创建文档"
    config.create.multipart = true
    config.create.columns.exclude :created_by, :created_at

    config.update.label = "修改文档"
    config.update.multipart = true
    config.update.columns.exclude :created_by, :created_by
  end

  def conditions_for_collection
    cond_array = ['created_by = ?', [current_user.id]]
    case params[:c]
    when 'undist'
      cond_array[0] += ' and status = ?'
      cond_array << 0
    end
    cond_array
  end
end
