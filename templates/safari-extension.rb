meta :extension do
  accepts_value_for :source
  accepts_value_for :provides

  template {
    met? {
      "~/Library/Safari/Extensions/#{provides}".p.exists?
    }

    meet {
      Babushka::Resource.extract(source) { |archive|
        shell "open #{archive.path.to_s}"
      }
    }
  }
end
