require 'date'

class BirthdayChecker

  def initialize
    @d = Date.today
    @day = @d.day
    @month = @d.month
    @year = @d.year
  end

  def is_birthday?(day, month)
    day == @day && month == @month
  end

  def days_till_birthday(day,month)
    birthdate = Date.parse("#{day}/#{month}/#{@year}")
    birthdate.mjd - @d.mjd
  end

end