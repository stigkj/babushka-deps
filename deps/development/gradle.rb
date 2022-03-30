# Installs gradle and supporting utilities
dep 'Gradle' do
  requires 'gradle.asdf',
           'gdub.managed'
end

dep 'gradle.asdf' do
	version '7.4.1'
end

# Gradle wrapper that finds the nearest build.gradle(.kts)
dep 'gdub.managed' do
  provides 'gw'
end
