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

describe Sheet0sController do

  # This should return the minimal set of attributes required to create a valid
  # Sheet0. As you add validations to Sheet0, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all sheet0s as @sheet0s" do
      sheet0 = Sheet0.create! valid_attributes
      get :index
      assigns(:sheet0s).should eq([sheet0])
    end
  end

  describe "GET show" do
    it "assigns the requested sheet0 as @sheet0" do
      sheet0 = Sheet0.create! valid_attributes
      get :show, :id => sheet0.id
      assigns(:sheet0).should eq(sheet0)
    end
  end

  describe "GET new" do
    it "assigns a new sheet0 as @sheet0" do
      get :new
      assigns(:sheet0).should be_a_new(Sheet0)
    end
  end

  describe "GET edit" do
    it "assigns the requested sheet0 as @sheet0" do
      sheet0 = Sheet0.create! valid_attributes
      get :edit, :id => sheet0.id
      assigns(:sheet0).should eq(sheet0)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sheet0" do
        expect {
          post :create, :sheet0 => valid_attributes
        }.to change(Sheet0, :count).by(1)
      end

      it "assigns a newly created sheet0 as @sheet0" do
        post :create, :sheet0 => valid_attributes
        assigns(:sheet0).should be_a(Sheet0)
        assigns(:sheet0).should be_persisted
      end

      it "redirects to the created sheet0" do
        post :create, :sheet0 => valid_attributes
        response.should redirect_to(Sheet0.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sheet0 as @sheet0" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sheet0.any_instance.stub(:save).and_return(false)
        post :create, :sheet0 => {}
        assigns(:sheet0).should be_a_new(Sheet0)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sheet0.any_instance.stub(:save).and_return(false)
        post :create, :sheet0 => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sheet0" do
        sheet0 = Sheet0.create! valid_attributes
        # Assuming there are no other sheet0s in the database, this
        # specifies that the Sheet0 created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sheet0.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => sheet0.id, :sheet0 => {'these' => 'params'}
      end

      it "assigns the requested sheet0 as @sheet0" do
        sheet0 = Sheet0.create! valid_attributes
        put :update, :id => sheet0.id, :sheet0 => valid_attributes
        assigns(:sheet0).should eq(sheet0)
      end

      it "redirects to the sheet0" do
        sheet0 = Sheet0.create! valid_attributes
        put :update, :id => sheet0.id, :sheet0 => valid_attributes
        response.should redirect_to(sheet0)
      end
    end

    describe "with invalid params" do
      it "assigns the sheet0 as @sheet0" do
        sheet0 = Sheet0.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sheet0.any_instance.stub(:save).and_return(false)
        put :update, :id => sheet0.id, :sheet0 => {}
        assigns(:sheet0).should eq(sheet0)
      end

      it "re-renders the 'edit' template" do
        sheet0 = Sheet0.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sheet0.any_instance.stub(:save).and_return(false)
        put :update, :id => sheet0.id, :sheet0 => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sheet0" do
      sheet0 = Sheet0.create! valid_attributes
      expect {
        delete :destroy, :id => sheet0.id
      }.to change(Sheet0, :count).by(-1)
    end

    it "redirects to the sheet0s list" do
      sheet0 = Sheet0.create! valid_attributes
      delete :destroy, :id => sheet0.id
      response.should redirect_to(sheet0s_url)
    end
  end

end
