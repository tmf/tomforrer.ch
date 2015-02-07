require 'test_helper'

class ContactControllerTest < ActionController::TestCase

    def setup
        @base_title = "tomforrer.ch"
    end

    test "should get list" do
      get :list
      assert_response :success
      assert_template 'contact/list'
      assert_select "title", "Contact - #{@base_title}"
    end

end
