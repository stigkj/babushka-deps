module Babushka
  class LambdaChooser
    # Make dep unmeetable because the platform isn't supported
    #
    # Should be used in a lambda chooser choice, like this:
    #
    #   requires {
    #     on :linux, 'some other dep'
    #     on :osx { unsupported_platform! }
    #   }
    #
    # You can use "otherwise", too:
    #
    #   requires {
    #     on :osx, 'go do the thing'
    #     otherwise { unsupported_platform! }
    #   }
    #
    # This will call "unmeetable!" on the dep if the platform matches,
    # and will have a predifined error message.
    def unsupported_platform!
      file, line = owner.source_location
      owner.unmeetable! <<-END.gsub(/ {8}/, '')
        I don't know how to install '#{owner.name}' on #{system}.
        You could teach me how! The dep is in #{file}:#{line}.
      END
    end

    private
    # The current platform
    def system
      "#{Babushka.host.system} #{Babushka.host.release}"
    end
  end
end