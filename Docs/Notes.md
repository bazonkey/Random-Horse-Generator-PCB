##### Electrical noise-based RNG

* Zener diodes/avalanche breakdown can be a source of noise
* source is fed into the comparator, latched using a flip flop
* OR: linear feedback shift register

  * creates pseudorandom numbers



###### LSFRs

* NANDLand code snippets: https://nandland.com/lfsr-linear-feedback-shift-register/
* https://medium.com/@ahe24mobile/building-an-lfsr-in-verilog-a-beginners-guide-to-pseudo-random-numbers-0c544ee34ac0
* https://www.edn.com/edn-01-04-96-the-ouroboros-of-the-digital-consciousness-linear-feedback-shift-registers/
* all 0's cannot appear with XOR. (make \[0] blank)
* 2^Bits-1 (max possible number of iterations)

  * 2^2-1 = 3, start with 2 bits?
* will be the same sequence of horses unless I **integrate a non-deterministic seed source, like push button timing**
* &#x20;LSFR will advance through all possible combos in the same order regardless, but the random selection will occur in the timing of the button press



#### User Input

###### Debouncers

* https://chipverify.com/verilog/verilog-debounce-circuit

