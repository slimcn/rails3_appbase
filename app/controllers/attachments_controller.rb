class AttachmentsController < ApplicationController
  def download
    @rec = Attachment.find(params[:id])
    file_path = Rails.root.to_s + '/public' + @rec.file.to_s
    send_file file_path
  end
end
