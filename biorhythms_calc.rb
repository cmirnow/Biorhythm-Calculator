class BiorhythmsCalc
  def self.day_counter(x, birthday)
    Integer(Date.today + x - birthday.to_date)
  end

  def self.get_values_and_dates(birthday)
    values = []
    [23, 28, 33].each do |x|
      values << BiorhythmsCalc.biorhythm_counter(x, Date.strptime(birthday, '%d-%m-%Y').to_date)[0]
    end
    dates = BiorhythmsCalc.biorhythm_counter(x = 23, Date.strptime(birthday, '%d-%m-%Y').to_date)[1].map { |e| "`#{e}`" }.join(', ')
    [values, dates]
  end

  def self.biorhythm_counter(number_of_cycle_days, birthday)
    arr1 = []
    arr2 = []
    (-3..14).each do |x|
      arr1 << (Math.sin(2 * Math::PI * BiorhythmsCalc.day_counter(x, birthday) / number_of_cycle_days) * 100).round(2)
      arr2 << (Date.today + x).to_formatted_s(:short)
    end
    [arr1, arr2]
  end

  def self.flash_message(birthday)
    'Today, ' +
      Time.new.strftime('%d of %B, %Y').to_s +
      ', you have lived ' +
      BiorhythmsCalc.day_counter(0, birthday).to_s +
      ' days.'
  end
end
