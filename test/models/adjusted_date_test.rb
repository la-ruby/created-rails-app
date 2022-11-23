require 'test_helper'

class AdjustDateTest < ActiveSupport::TestCase
  test "When date1 is today and date2 is 1 day ago then adjusted_date should be greater then date1 and date2" do
    date1 = Date.today  
    date2 = date1 - 1
    adjusted_date = AdjustedDate.new(date1, date2)
    assert adjusted_date.to_date > date1
    assert adjusted_date.to_date > date2
  end

  test "When date1 and date2 is future date then adjusted date should be greater then to date1" do
    date1 = Date.new(2023, 1, 1)  
    date2 = date1 - 1
    adjusted_date = AdjustedDate.new(date1, date2)
    assert adjusted_date.to_date > date1
  end

  test "When date1 4th Nov, 2022 and date2 is 1 Dec, 2022 then adjusted date should be greater then to date1" do
    date1 = Date.new(2022, 11, 4)
    date2 = Date.new(2022, 12, 1)
    adjusted_date = AdjustedDate.new(date1, date2)
    assert adjusted_date.to_date > date1
  end

  test "When date1 and date2 is 1 Jan, 2023 then adjusted date should be greater then to date1" do
    date1 = Date.new(2023,1, 1)
    date2 = Date.new(2023,1, 1)
    adjusted_date = AdjustedDate.new(date1, date2)
    assert adjusted_date.to_date > date1
  end

  test "When date1 is 29 Feb, 2020 and date2 is 31 March 2020 from leap year then adjusted date should be equal to date1" do
    date1 = Date.new(2020, 2, 29)
    date2 = Date.new(2020, 3, 31)
    adjusted_date = AdjustedDate.new(date1, date2)
    assert adjusted_date.to_date == date1
  end

  test "When date1 is 29 Feb, 2020 and date2 is 31 March 2020 from leap year then adjusted date should not be greater then to date1" do
    date1 = Date.new(2020, 2, 29)
    date2 = Date.new(2020, 3, 31)
    adjusted_date = AdjustedDate.new(date1, date2)
    assert !(adjusted_date.to_date > date1)
  end
end
