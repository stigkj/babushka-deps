# Installs gradle and supporting utilities
dep 'Gradle' do
  requires 'gradle.asdf',
           'gdub.managed'
end

dep 'gradle.asdf' do
	version '4.10.2'
end

# Gradle wrapper that finds the nearest build.gradle(.kts)
dep 'gdub.managed' do
  provides 'gw'
end
