dep 'Tomcat 7' do
  requires {
    on :osx, 'tomcat7.managed'
    otherwise { unsupported_platform! }
  }
end

dep 'tomcat7.managed', :for => :osx do
  requires 'homebrew versions'
  provides 'catalina'
end
