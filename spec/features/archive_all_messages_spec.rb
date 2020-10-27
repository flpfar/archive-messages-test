require 'rails_helper'

feature 'Archive all messages' do
  scenario 'successfully' do
    Message.create(title: 'Message 1', content: 'Message content 1')
    Message.create(title: 'Message 2', content: 'Message content 2')

    visit messages_url
    click_on 'Archive All'

    expect(page).to have_no_content('Message 1')
    expect(page).to have_no_content('Message 2')
    expect(page).to have_content('All messages were successfully archived')
  end
end