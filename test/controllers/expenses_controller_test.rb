require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase

	setup do
		@expense = expenses(:one)
	end

	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:expenses)
	end

	
end


