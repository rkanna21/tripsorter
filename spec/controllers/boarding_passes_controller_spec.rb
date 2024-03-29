require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BoardingPassesController do

  # This should return the minimal set of attributes required to create a valid
  # BoardingPass. As you add validations to BoardingPass, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "source" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BoardingPassesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all boarding_passes as @boarding_passes" do
      boarding_pass = BoardingPass.create! valid_attributes
      get :index, {}, valid_session
      assigns(:boarding_passes).should eq([boarding_pass])
    end
  end

  describe "GET show" do
    it "assigns the requested boarding_pass as @boarding_pass" do
      boarding_pass = BoardingPass.create! valid_attributes
      get :show, {:id => boarding_pass.to_param}, valid_session
      assigns(:boarding_pass).should eq(boarding_pass)
    end
  end

  describe "GET new" do
    it "assigns a new boarding_pass as @boarding_pass" do
      get :new, {}, valid_session
      assigns(:boarding_pass).should be_a_new(BoardingPass)
    end
  end

  describe "GET edit" do
    it "assigns the requested boarding_pass as @boarding_pass" do
      boarding_pass = BoardingPass.create! valid_attributes
      get :edit, {:id => boarding_pass.to_param}, valid_session
      assigns(:boarding_pass).should eq(boarding_pass)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BoardingPass" do
        expect {
          post :create, {:boarding_pass => valid_attributes}, valid_session
        }.to change(BoardingPass, :count).by(1)
      end

      it "assigns a newly created boarding_pass as @boarding_pass" do
        post :create, {:boarding_pass => valid_attributes}, valid_session
        assigns(:boarding_pass).should be_a(BoardingPass)
        assigns(:boarding_pass).should be_persisted
      end

      it "redirects to the created boarding_pass" do
        post :create, {:boarding_pass => valid_attributes}, valid_session
        response.should redirect_to(BoardingPass.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boarding_pass as @boarding_pass" do
        # Trigger the behavior that occurs when invalid params are submitted
        BoardingPass.any_instance.stub(:save).and_return(false)
        post :create, {:boarding_pass => { "source" => "invalid value" }}, valid_session
        assigns(:boarding_pass).should be_a_new(BoardingPass)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BoardingPass.any_instance.stub(:save).and_return(false)
        post :create, {:boarding_pass => { "source" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boarding_pass" do
        boarding_pass = BoardingPass.create! valid_attributes
        # Assuming there are no other boarding_passes in the database, this
        # specifies that the BoardingPass created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BoardingPass.any_instance.should_receive(:update).with({ "source" => "MyString" })
        put :update, {:id => boarding_pass.to_param, :boarding_pass => { "source" => "MyString" }}, valid_session
      end

      it "assigns the requested boarding_pass as @boarding_pass" do
        boarding_pass = BoardingPass.create! valid_attributes
        put :update, {:id => boarding_pass.to_param, :boarding_pass => valid_attributes}, valid_session
        assigns(:boarding_pass).should eq(boarding_pass)
      end

      it "redirects to the boarding_pass" do
        boarding_pass = BoardingPass.create! valid_attributes
        put :update, {:id => boarding_pass.to_param, :boarding_pass => valid_attributes}, valid_session
        response.should redirect_to(boarding_pass)
      end
    end

    describe "with invalid params" do
      it "assigns the boarding_pass as @boarding_pass" do
        boarding_pass = BoardingPass.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BoardingPass.any_instance.stub(:save).and_return(false)
        put :update, {:id => boarding_pass.to_param, :boarding_pass => { "source" => "invalid value" }}, valid_session
        assigns(:boarding_pass).should eq(boarding_pass)
      end

      it "re-renders the 'edit' template" do
        boarding_pass = BoardingPass.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BoardingPass.any_instance.stub(:save).and_return(false)
        put :update, {:id => boarding_pass.to_param, :boarding_pass => { "source" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boarding_pass" do
      boarding_pass = BoardingPass.create! valid_attributes
      expect {
        delete :destroy, {:id => boarding_pass.to_param}, valid_session
      }.to change(BoardingPass, :count).by(-1)
    end

    it "redirects to the boarding_passes list" do
      boarding_pass = BoardingPass.create! valid_attributes
      delete :destroy, {:id => boarding_pass.to_param}, valid_session
      response.should redirect_to(boarding_passes_url)
    end
  end

end
