# ruleid:ruby-file-linking
def retrieve_file
    uuid = SecureRandom.uuid
    File.link(Rails.root.join(params[:filename]), "assets/#{uuid}")
    redirect_to "/#{uuid}"
end
