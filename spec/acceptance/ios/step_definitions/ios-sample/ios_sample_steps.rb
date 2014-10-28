# coding: utf-8

# execute only tagged as :sample_scenario
steps_for :sample_scenario do
  step ' :account と :pass でログインする' do |account, pass|
    # login scenario with account and pass
  end

  step ' :user_status ユーザでログインする' do |user_status|
    if user_status == 'userA'
      account = account_for_userA
      pass = pass_for_userA
      send ' :account と :pass でログインする', account, pass
    elsif user_status == 'userB'
      account = account_for_userB
      pass = pass_for_userB
      send ' :account と :pass でログインする', account, pass
    else
      # nothing
    end
  end
end
