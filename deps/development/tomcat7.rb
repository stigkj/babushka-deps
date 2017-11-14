dep 'Tomcat 7' do
  requires {
    on :osx, 'tomcat7.managed'
    otherwise { unsupported_platform! }
  }
end

dep 'tomcat7.managed', :for => :osx do
  provides 'catalina'
end
