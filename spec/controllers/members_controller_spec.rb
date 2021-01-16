require 'rails_helper'

RSpec.describe MembersController, type: :controller do

    describe 'GET index' do
        context 'when some members are present' do
           it 'assign @members' do
                member = Member.create(email: 'shanmicheal25@gmail.com', name: 'shankar')
                get :index
                expect(assigns(:members)).to eq([member])
            end
        end

        context 'when no members' do
            it 'assigns @members' do
                get :index
                expect(assigns(:members)).to eq([])
            end
      
        end

              it 'renders the index template' do
                get :index
                expect(response).to render_template("index")
            end
       
    end
end
