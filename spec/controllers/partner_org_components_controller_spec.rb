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

describe PartnerOrgComponentsController do

  # This should return the minimal set of attributes required to create a valid
  # PartnerOrgComponent. As you add validations to PartnerOrgComponent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PartnerOrgComponentsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all partner_org_components as @partner_org_components" do
      partner_org_component = PartnerOrgComponent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:partner_org_components).should eq([partner_org_component])
    end
  end

  describe "GET show" do
    it "assigns the requested partner_org_component as @partner_org_component" do
      partner_org_component = PartnerOrgComponent.create! valid_attributes
      get :show, {:id => partner_org_component.to_param}, valid_session
      assigns(:partner_org_component).should eq(partner_org_component)
    end
  end

  describe "GET new" do
    it "assigns a new partner_org_component as @partner_org_component" do
      get :new, {}, valid_session
      assigns(:partner_org_component).should be_a_new(PartnerOrgComponent)
    end
  end

  describe "GET edit" do
    it "assigns the requested partner_org_component as @partner_org_component" do
      partner_org_component = PartnerOrgComponent.create! valid_attributes
      get :edit, {:id => partner_org_component.to_param}, valid_session
      assigns(:partner_org_component).should eq(partner_org_component)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PartnerOrgComponent" do
        expect {
          post :create, {:partner_org_component => valid_attributes}, valid_session
        }.to change(PartnerOrgComponent, :count).by(1)
      end

      it "assigns a newly created partner_org_component as @partner_org_component" do
        post :create, {:partner_org_component => valid_attributes}, valid_session
        assigns(:partner_org_component).should be_a(PartnerOrgComponent)
        assigns(:partner_org_component).should be_persisted
      end

      it "redirects to the created partner_org_component" do
        post :create, {:partner_org_component => valid_attributes}, valid_session
        response.should redirect_to(PartnerOrgComponent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved partner_org_component as @partner_org_component" do
        # Trigger the behavior that occurs when invalid params are submitted
        PartnerOrgComponent.any_instance.stub(:save).and_return(false)
        post :create, {:partner_org_component => {}}, valid_session
        assigns(:partner_org_component).should be_a_new(PartnerOrgComponent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PartnerOrgComponent.any_instance.stub(:save).and_return(false)
        post :create, {:partner_org_component => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested partner_org_component" do
        partner_org_component = PartnerOrgComponent.create! valid_attributes
        # Assuming there are no other partner_org_components in the database, this
        # specifies that the PartnerOrgComponent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PartnerOrgComponent.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => partner_org_component.to_param, :partner_org_component => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested partner_org_component as @partner_org_component" do
        partner_org_component = PartnerOrgComponent.create! valid_attributes
        put :update, {:id => partner_org_component.to_param, :partner_org_component => valid_attributes}, valid_session
        assigns(:partner_org_component).should eq(partner_org_component)
      end

      it "redirects to the partner_org_component" do
        partner_org_component = PartnerOrgComponent.create! valid_attributes
        put :update, {:id => partner_org_component.to_param, :partner_org_component => valid_attributes}, valid_session
        response.should redirect_to(partner_org_component)
      end
    end

    describe "with invalid params" do
      it "assigns the partner_org_component as @partner_org_component" do
        partner_org_component = PartnerOrgComponent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PartnerOrgComponent.any_instance.stub(:save).and_return(false)
        put :update, {:id => partner_org_component.to_param, :partner_org_component => {}}, valid_session
        assigns(:partner_org_component).should eq(partner_org_component)
      end

      it "re-renders the 'edit' template" do
        partner_org_component = PartnerOrgComponent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PartnerOrgComponent.any_instance.stub(:save).and_return(false)
        put :update, {:id => partner_org_component.to_param, :partner_org_component => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested partner_org_component" do
      partner_org_component = PartnerOrgComponent.create! valid_attributes
      expect {
        delete :destroy, {:id => partner_org_component.to_param}, valid_session
      }.to change(PartnerOrgComponent, :count).by(-1)
    end

    it "redirects to the partner_org_components list" do
      partner_org_component = PartnerOrgComponent.create! valid_attributes
      delete :destroy, {:id => partner_org_component.to_param}, valid_session
      response.should redirect_to(partner_org_components_url)
    end
  end

end