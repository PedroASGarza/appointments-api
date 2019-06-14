require 'rails_helper'

RSpec.describe PatientsController, type: :controller do
  let!(:patients) { create_list(:patient, 10) }
  let(:patient_id) { patients.first.id }

  describe 'GET /patients' do
    before { get :index }

    it 'returns patients' do
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /patient/:id' do
    before { get :show, params: { id: patient_id}}

    context 'when patient exists' do
      it 'returns patient' do
        expect(JSON.parse(response.body)).not_to be_empty
        expect(JSON.parse(response.body)['id']).to eq(patient_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    # TODO 
    # context 'when patient doesnt exist' do
    #   let(:todo_id) { 1021 }
    #
    #   it 'returns status code 404' do
    #     expect(response).to have_http_status(404)
    #   end
    #
    #   it 'returns a not found message' do
    #     expect(response.body).to match(/Couldn't find Todo/)
    #   end
    # end
  end
end
