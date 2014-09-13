# coding: utf-8

module ExpectSteps

  # Confirmation with expect
  step '画面に :name が表示されている' do |name|
    sleep 1
    expect { driver_wait_until_displayed_name?(name, 5) }.not_to raise_error
  end

  step '画面に :name が表示されていない' do |name|
    expect { driver_wait_until_displayed_name?(name, 5) }.to raise_error
  end

end

RSpec.configure do |c|
  c.include ExpectSteps
end
