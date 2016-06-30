# Add new sources for mail face images
dep 'face2face.installer', :for => :osx do
  source 'https://www.feingeist.io/files/Face2Face.zip'
  met? {
    "#{ENV['HOME']}/Library/Mail/Bundles/Face2Face.mailbundle".p.exist?
  }
end
