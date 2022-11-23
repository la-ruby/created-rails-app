# An "adusted" date:
#   with mday being 1 day less than date2's mday
#   but month, year components as close to date1 as possible
#   , with padding so returned date is always greater than date1
#
class AdjustedDate
  def initialize(date1, date2)
    year = date1.year
    month = date1.month
    mday = date2.mday - 1
    @date = begin
      Date.new(year, month, mday)
    rescue StandardError
      nil
    end
    # we subtract a few days to fix invalid dates
    @date ||= subtract(year, month, mday) # if e.g. apr 31 is invalid, subtracting helps
    if @date < date1
      @date = if date2.mday == 1 # we're dealing with month ends
        date1.end_of_month
      else
        date1 + 1.month
      end
    end
  end

  def to_date
    @date
  end

  private

  def subtract(year, month, mday)
    if mday.zero?
      if month == 1
        Date.new(year - 1, 12, 1).end_of_month # flip back to previous year
      else
        Date.new(year, month - 1, 1).end_of_month # flip back one month
      end
    elsif mday > 28 && month == 2
      Date.new(year, month, 28).end_of_month
    end
  end
end
