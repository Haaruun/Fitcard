class HomeController < ApplicationController
  def index
  end

  def zip
    send_file Rails.root.join('private', 'Cover_k copy.zip'), :type=>"application/zip", :x_sendfile=>true
  end

  def pdf
    send_file Rails.root.join('private', 'Resume_High_Res.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end

  def doc
    send_file Rails.root.join('private', 'Cover_K copy.docx'), :type=>"application/doc", :x_sendfile=>true
  end
end
