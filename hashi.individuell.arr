include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")



include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
energiforbrukstabell = load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
  sanitize energi using string-sanitizer
end



fun energi-to-number(s :: String) -> Number: 
  cases(Option) string-to-number(s):
    | some(a) => a
    | none => 0
  end

where:
  energi-to-number("")  is 0
  energi-to-number("38") is 38
  energi-to-number("37") is 37
  energi-to-number("5")  is 5
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
  energi-to-number("4")  is 4
  
end

mytable = transform-column(energiforbrukstabell, "energi", energi-to-number)

fun sum-on-energi():
  t = transform-column(energiforbrukstabell,"energi",energi-to-number)
  
  sum(t, "energi")
end


# i denne oppgaven har jeg valgt å ta

distance-travelled-per-day = 3.2
distance-per-unit-of-fuel = 0.16
energy-per-unit-of-fuel = 0.84

energy-per-day = ( distance-travelled-per-day / distance-per-unit-of-fuel ) * energy-per-unit-of-fuel

fun addcar(value :: Number) -> Number:
  if value == 0: energy-per-day else: value end
end 

chartzaka = transform-column(mytable, "energi", addcar)
sum-on-energi() + energy-per-day

bar-chart(chartzaka, "komponent", "energi")

