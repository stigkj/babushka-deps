# Tools for renaming several files easily
dep 'Rename tools' do
  requires 'renameutils.managed',
           'massren.managed'
end

# Several tools for renaming files from a text editor
dep 'renameutils.managed' do
  provides 'qmv'
end

#  Nice tool for renaming files through an text editor
dep 'massren.managed'

# TODO look at these:
# https://github.com/c9s/fsrename
# https://github.com/shenwei356/brename
# https://github.com/WindomZ/uniname

# TODO this did not build last time I tried
dep 'rnm.managed' do
  installs 'neurobin/pkg/rnm'
end
