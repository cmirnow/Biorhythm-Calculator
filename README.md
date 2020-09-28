## Biorhythm Calculator on Ruby

To get arrays of dates and biorhythm values, call these methods:

```bash
values = BiorhythmsCalc.get_values_and_dates(params[:birthday])[0]
dates = BiorhythmsCalc.get_values_and_dates(params[:birthday])[1]
flash.now[:notice] = BiorhythmsCalc.flash_message(params[:birthday])
```

[Demo](https://masterpro.herokuapp.com/bio/index).
[Description](https://masterpro.ws/biorhythm-calculator-ruby) (in Russian).
