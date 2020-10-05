## Biorhythm Calculator on Ruby

Oops ... I did it on Sinatra. But it seems that the [Rails](https://masterpro.herokuapp.com/bio/index) were better. :)

How to start:
```bash
git clone https://github.com/cmirnow/Biorhythm-Calculator.git
cd Biorhythm-Calculator
bundle install
bundle exec shotgun
```
...and go to http://localhost:9393

To get arrays of dates and biorhythm values, call these method:

```bash
arr = BiorhythmsCalc.get_values_and_dates(params[:birthday])
@values = arr[0]
@dates = arr.delete_at(1)
flash.now[:notice] = BiorhythmsCalc.flash_message(params[:birthday])
```

[Description](https://masterpro.ws/biorhythm-calculator-ruby) (in Russian).
