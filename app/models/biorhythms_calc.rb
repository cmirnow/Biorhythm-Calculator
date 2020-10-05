class BiorhythmsCalc
  def self.get_values_and_dates(b)
    values = []
    [23, 28, 33].each do |x|
      values << BiorhythmsCalc.biorhythm_counter(x, todays_date(b))[0]
    end
    dates = BiorhythmsCalc.biorhythm_counter(x = 23, todays_date(b))[1].map { |e| "`#{e}`" }.join(', ')
    [values, dates]
  end

  def self.biorhythm_counter(*args)
    arr1 = []
    arr2 = []
    (-3..15).each do |x|
      arr1 << calculation(x, args[1], args[0])
      arr2 << get_date_period(x)
    end
    [arr1, arr2]
  end

  def self.calculation(*args)
  	(Math.sin(2 * Math::PI * BiorhythmsCalc.day_counter(args[0], args[1]) / args[2]) * 100).round(2)
  end

  def self.get_date_period(x)
  # Sinatra:
  	(Date.today + x)
  # Rails: 
  # (Date.today + x).to_formatted_s(:short) 
  end

  def self.day_counter(*args)
    Integer(Date.today + args[0] - args[1].to_date)
  end

  def self.todays_date(b)
  	Date.strptime(b, '%d-%m-%Y').to_date
  end

  def self.flash_message(b)
    'Today, ' +
      Time.new.strftime('%d of %B, %Y').to_s +
      ', you have lived ' +
      BiorhythmsCalc.day_counter(0, b).to_s +
      ' days.'
  end
end