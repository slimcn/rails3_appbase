class SheetsController < ApplicationController
  layout "layout960"

  before_filter :authenticate_user!

  active_scaffold :sheet do |conf|
    conf.create.multipart = true
    conf.update.multipart = true
    conf.nested.add_link "add attachment", [:attachments]
  end
end
