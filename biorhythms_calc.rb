class BiorhythmsCalc
  def self.day_counter(x, birthday)
    Integer(Date.today + x - birthday)
  end

  def self.get_values(birthday)
    values = []
    [23, 28, 33].each do |x|
      values << BiorhythmsCalc.biorhythm_counter(x, Date.strptime(birthday, '%d-%m-%Y').to_date)
    end
    values
  end

  def self.get_dates
    arr = []
    (-3..14).each do |i|
      arr << (Date.today + i).to_formatted_s(:short)
    end
    arr.map { |e| "`#{e}`" }.join(', ')
  end

  def self.biorhythm_counter(number_of_cycle_days, birthday)
    arr = []
    (-3..14).each do |x|
      arr << (Math.sin(2 * Math::PI * BiorhythmsCalc.day_counter(x, birthday) / number_of_cycle_days) * 100).round(2)
    end
    arr
  end

  def self.flash_message(birthday)
    'Today, ' +
      Time.new.strftime('%d of %B, %Y').to_s +
      ', you have lived ' +
      Integer(Date.today - birthday.to_date).to_s +
      ' days.'
  end
end
