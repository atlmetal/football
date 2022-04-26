require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/federations", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Federation. As you add validations to Federation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Federation.create! valid_attributes
      get federations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      federation = Federation.create! valid_attributes
      get federation_url(federation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_federation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      federation = Federation.create! valid_attributes
      get edit_federation_url(federation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Federation" do
        expect {
          post federations_url, params: { federation: valid_attributes }
        }.to change(Federation, :count).by(1)
      end

      it "redirects to the created federation" do
        post federations_url, params: { federation: valid_attributes }
        expect(response).to redirect_to(federation_url(Federation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Federation" do
        expect {
          post federations_url, params: { federation: invalid_attributes }
        }.to change(Federation, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post federations_url, params: { federation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested federation" do
        federation = Federation.create! valid_attributes
        patch federation_url(federation), params: { federation: new_attributes }
        federation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the federation" do
        federation = Federation.create! valid_attributes
        patch federation_url(federation), params: { federation: new_attributes }
        federation.reload
        expect(response).to redirect_to(federation_url(federation))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        federation = Federation.create! valid_attributes
        patch federation_url(federation), params: { federation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested federation" do
      federation = Federation.create! valid_attributes
      expect {
        delete federation_url(federation)
      }.to change(Federation, :count).by(-1)
    end

    it "redirects to the federations list" do
      federation = Federation.create! valid_attributes
      delete federation_url(federation)
      expect(response).to redirect_to(federations_url)
    end
  end
end
