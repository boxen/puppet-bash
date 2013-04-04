require "spec_helper"

describe "bash" do
  let(:facts) { default_test_facts }

  it do
    should contain_package("bash")

    should contain_file_line("add bash to /etc/shells").with({
      :path    => "/etc/shells",
      :line    => "/test/boxen/homebrew/bin/bash",
      :require => "Package[bash]"
    })

    should contain_osx_chsh("testuser").with({
      :shell   => "/test/boxen/homebrew/bin/bash",
      :require => "File_line[add bash to /etc/shells]"
    })
  end
end
