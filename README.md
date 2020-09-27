## Biorhythm Calculator on Ruby

To get arrays of dates and biorhythm values, call these methods:

```bash
values = BiorhythmsCalc.get_values(params[:birthday])
dates = BiorhythmsCalc.get_dates
flash.now[:notice] = BiorhythmsCalc.flash_message(params[:birthday])
```

[Demo](https://masterpro.herokuapp.com/bio/index).
[Description](https://masterpro.ws/biorhythm-calculator-ruby) (in Russian).

