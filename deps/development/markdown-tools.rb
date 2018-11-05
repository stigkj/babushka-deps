dep 'Markdown tools' do
  requires 'macdown.cask',
           'markoff.mas',
           'typora.cask',
           'mdless.gem',
           'octodown.gem'
end

# Nice and free Markdown editor
dep 'macdown.cask'

# Nice and free Markdown editor
dep 'markoff.mas' do
  id '1084713122'
end

# Write markdown without markdown (beta, payware)
dep 'typora.cask'

# less for Markdown files
dep 'mdless.gem' do
  requires 'pygmentize.gem'
end
dep 'pygmentize.gem'

# Previews what your Markdown would look like on Github
dep 'octodown.gem'

# Really nice Markdown editor
# TODO should I use this? It is payware (http://caret.io)
dep 'caret.cask'
