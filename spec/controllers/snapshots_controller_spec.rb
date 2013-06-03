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

describe SnapshotsController do

  # This should return the minimal set of attributes required to create a valid
  # Snapshot. As you add validations to Snapshot, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SnapshotsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all snapshots as @snapshots" do
      snapshot = Snapshot.create! valid_attributes
      get :index, {}, valid_session
      assigns(:snapshots).should eq([snapshot])
    end
  end

  describe "GET show" do
    it "assigns the requested snapshot as @snapshot" do
      snapshot = Snapshot.create! valid_attributes
      get :show, {:id => snapshot.to_param}, valid_session
      assigns(:snapshot).should eq(snapshot)
    end
  end

  describe "GET new" do
    it "assigns a new snapshot as @snapshot" do
      get :new, {}, valid_session
      assigns(:snapshot).should be_a_new(Snapshot)
    end
  end

  describe "GET edit" do
    it "assigns the requested snapshot as @snapshot" do
      snapshot = Snapshot.create! valid_attributes
      get :edit, {:id => snapshot.to_param}, valid_session
      assigns(:snapshot).should eq(snapshot)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Snapshot" do
        expect {
          post :create, {:snapshot => valid_attributes}, valid_session
        }.to change(Snapshot, :count).by(1)
      end

      it "assigns a newly created snapshot as @snapshot" do
        post :create, {:snapshot => valid_attributes}, valid_session
        assigns(:snapshot).should be_a(Snapshot)
        assigns(:snapshot).should be_persisted
      end

      it "redirects to the created snapshot" do
        post :create, {:snapshot => valid_attributes}, valid_session
        response.should redirect_to(Snapshot.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved snapshot as @snapshot" do
        # Trigger the behavior that occurs when invalid params are submitted
        Snapshot.any_instance.stub(:save).and_return(false)
        post :create, {:snapshot => {  }}, valid_session
        assigns(:snapshot).should be_a_new(Snapshot)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Snapshot.any_instance.stub(:save).and_return(false)
        post :create, {:snapshot => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested snapshot" do
        snapshot = Snapshot.create! valid_attributes
        # Assuming there are no other snapshots in the database, this
        # specifies that the Snapshot created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Snapshot.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => snapshot.to_param, :snapshot => { "these" => "params" }}, valid_session
      end

      it "assigns the requested snapshot as @snapshot" do
        snapshot = Snapshot.create! valid_attributes
        put :update, {:id => snapshot.to_param, :snapshot => valid_attributes}, valid_session
        assigns(:snapshot).should eq(snapshot)
      end

      it "redirects to the snapshot" do
        snapshot = Snapshot.create! valid_attributes
        put :update, {:id => snapshot.to_param, :snapshot => valid_attributes}, valid_session
        response.should redirect_to(snapshot)
      end
    end

    describe "with invalid params" do
      it "assigns the snapshot as @snapshot" do
        snapshot = Snapshot.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Snapshot.any_instance.stub(:save).and_return(false)
        put :update, {:id => snapshot.to_param, :snapshot => {  }}, valid_session
        assigns(:snapshot).should eq(snapshot)
      end

      it "re-renders the 'edit' template" do
        snapshot = Snapshot.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Snapshot.any_instance.stub(:save).and_return(false)
        put :update, {:id => snapshot.to_param, :snapshot => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested snapshot" do
      snapshot = Snapshot.create! valid_attributes
      expect {
        delete :destroy, {:id => snapshot.to_param}, valid_session
      }.to change(Snapshot, :count).by(-1)
    end

    it "redirects to the snapshots list" do
      snapshot = Snapshot.create! valid_attributes
      delete :destroy, {:id => snapshot.to_param}, valid_session
      response.should redirect_to(snapshots_url)
    end
  end

end