# Makes going from Docker to Kubernetes one command
dep 'spread' do
  requires 'homebrew tap'.with('redspread/spread')
  requires 'spread.managed'
end

dep 'spread.managed'
