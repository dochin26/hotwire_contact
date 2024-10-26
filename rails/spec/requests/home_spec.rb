require "rails_helper"

RSpec.describe 'home', type: :request do
    describe '#home' do
        it '正常にレスポンスを返すこと' do
            get root_path
            expect(response).to have_http_status :ok
        end
        it 'Part Staff Contactが含まれていること' do
            get root_path
            expect(response.body).to include "Part Staff Contact"
        end
    end
end