class DashboardController < ApplicationController
require 'date'

  def index
    @tab = :dashboard
    @expensestoday = Expense.where('DATE(date) = ?', Date.today).sum(:amount)
    @expensesyesterday = Expense.where("DATE(date) = ?", Date.today.prev_day).sum(:amount)
    @expensesthismonth = Expense.where("date >= ? AND date <= ?", Date.today.at_beginning_of_month, Date.today.at_end_of_month).sum(:amount)
    @expenseslastmonth = Expense.where('date >= ? AND date <= ?', Date.today.at_beginning_of_month.last_month, Date.today.at_end_of_month.last_month).sum(:amount)
  end
end
