require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase

	test "Expense should have a date" do
		@expense = Expense.new(concept: 'test1', amount: "10", category_id:"1", kind_id: "1")
		assert_not @expense.save
	end

	test "Expense should have a category" do
		@expense = Expense.new(date: "2018-02-13",concept: 'test1', amount: "20", kind_id: "1")
		assert_not @expense.save
	end

	test "Expense should have a kind" do
		@expense = Expense.new(date: "2018-02-13",concept: 'test1', amount: "20", category_id:"1" )
		assert_not @expense.save
	end

	test "the field amount must be numeric" do
		@expense = Expense.new(date: "2018-02-13",concept: 'test1', amount: "not-number", category_id:"1", kind_id: "1")
		assert_not @expense.save
	end

	

 

end
