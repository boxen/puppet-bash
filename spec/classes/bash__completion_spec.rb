require "spec_helper"

describe "bash::completion" do
  let(:facts) { default_test_facts }

  it do
    should contain_package("bash-completion").with_ensure("latest")

    should contain_boxen__env_script("bash_completion").with({
        :ensure   => :present,
        :priority => "lowest",
    })
  end
end

