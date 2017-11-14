dep 'VirtualBox' do
  requires {
    on :osx, 'virtualbox.cask', 'VirtualBox Extension Pack'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'virtualbox.cask', :for => :osx

# This is needed for running OS X on VirtualBox
dep 'VirtualBox Extension Pack' do
  met? {
    has_extension_pack?
  }
  meet {
    log_shell 'Installing VirtualBox Extension Pack', install_script
  }

  def has_extension_pack?
    shell('VBoxManage list extpacks').include? 'Extension Packs: 1'
  end

  def install_script
    %{export version=$(VBoxManage -v) &&
     export var1=$(echo ${version} | cut -d 'r' -f 1) &&
     export var2=$(echo ${version} | cut -d 'r' -f 2) &&
     export file="Oracle_VM_VirtualBox_Extension_Pack-${var1}-${var2}.vbox-extpack" &&
     echo $file &&
     curl --silent --location http://download.virtualbox.org/virtualbox/${var1}/${file} \
          -o /tmp/${file} && VBoxManage extpack install /tmp/${file} --replace &&
     rm /tmp/${file} &&
     unset version var1 var2 file}
  end
end
