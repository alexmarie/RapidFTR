require 'spec_helper'

describe HistoriesController do
  
  it "should have restful route for GET" do
    assert_routing( {:method => 'get', :path => '/children/1/history'}, 
                    {:controller => "histories", :action => "show", :child_id => "1"})
  end
  
  it "should use child_id param when retrieving the child" do
    Child.stub!(:get).with "1"
    get :show, :child_id => "1"
  end
end