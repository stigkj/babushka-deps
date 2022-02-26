dep 'Check HD is in case-sensitive encrypted APFS format' do
  met? {
    (casesensitive_apfs_check_cache_file.exists? || is_casesensitive_apfs) &&
        (hd_encrypted_check_cache_file.exists? || is_encrypted)
  }
  meet {
    Babushka::Prompt.confirm('Format disk in case-sensitive encrypted APFS', :default => 'y')
  }

  def is_casesensitive_apfs
    shell('diskutil info /System/Volumes/Data || echo error') =~ /File System Personality:.*Case-sensitive APFS/ &&
        casesensitive_apfs_check_cache_file.touch
  end

  def is_encrypted
    shell('diskutil apfs list || echo error') =~ /FileVault:\s*Yes/ &&
        hd_encrypted_check_cache_file.touch
  end

  def casesensitive_apfs_check_cache_file
    '/tmp/casesensitive_apfs_check_passed'.p
  end

  def hd_encrypted_check_cache_file
    '/tmp/hd_encrypted_check_passed'.p
  end
end
