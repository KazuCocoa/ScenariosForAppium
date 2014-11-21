module ExpectSteps

  # Confirmation with expect
  step '画面に :name が表示されている' do |name|
    sleep 1
    expect( wait { find_element(accessibility_id: name) }.displayed? ).to be true
  end

  step '画面に :name が表示されていない' do |name|
    expect( wait { find_element(accessibility_id: name) }.displayed? ).to be false
  end

end

RSpec.configure do |c|
  c.include ExpectSteps
end