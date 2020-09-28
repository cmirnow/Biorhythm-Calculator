## Biorhythm Calculator on Ruby

To get arrays of dates and biorhythm values, call these method:

```bash
arr = BiorhythmsCalc.get_values_and_dates(params[:birthday])
@values = arr[0]
@dates = arr.delete_at(1)
flash.now[:notice] = BiorhythmsCalc.flash_message(params[:birthday])
```

[Demo](https://masterpro.herokuapp.com/bio/index).
[Description](https://masterpro.ws/biorhythm-calculator-ruby) (in Russian).
