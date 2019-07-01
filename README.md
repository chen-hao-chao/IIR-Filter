# IIR-Filter

I implement an IIR filter using verilog. The input includes clock, reset, data_in and data_done, while the output includes address of the data, read enable, write enable, data and finish. I use three states to process this program: IDEL, COUNT and WRITE.

![state_graph](https://user-images.githubusercontent.com/41135423/42927995-b1c742d4-8b68-11e8-8d46-f0c293f3fc8e.jpg)

In the IDEL state, the mission is nothing but to initialize all the variables. In the COUNT state, the filter reads the data, chooses the weight to product, and operates to get the value. In the WRITE state, the filter comfirms all the variables are initialized. Also, It writes back the operated data to the RAM.


![block_diagram](https://user-images.githubusercontent.com/41135423/42926718-d1b6b100-8b64-11e8-823c-c907bdf42811.jpg)


Note: there is more than one way to operate IIR filter. You can choose more effecient way to do this, but the price is using more hardware. Whatever, better effeciency costs more, less hardware means less effeciency.
