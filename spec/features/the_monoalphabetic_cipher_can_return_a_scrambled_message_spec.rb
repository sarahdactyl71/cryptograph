require 'rails_helper'

RSpec.feature 'Monoalphabetic Interface' do

   it 'can take a simple message and scramble it' do
     visit ciphers_path

     fill_in 'Message', with: 'abc'
     select('Monoalphabetic', :from => 'Select Box')
     select('B', :from => 'Select Box')
     click_button 'Encode Message'

     expect(params[:message]).to eq('bcd')
   end
end
