class UploadController < ApplicationController



def index
     render :file => 'app\views\users\show.html.erb'
  end
  def uploadFile
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end


end
