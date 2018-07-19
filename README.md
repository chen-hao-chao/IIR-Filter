# IIR-Filter

I implement a IIR filter using verilog. The input includes clock, reset, data_in and data_done, while the output includes address of the data, read enable, write enable, data and finish. I use three states to process this program: IDEL, COUNT and WRITE.

![state_graph](https://user-images.githubusercontent.com/41135423/42926719-d1dbb95a-8b64-11e8-94cf-c5b2d0be3d0a.jpg)



![block_diagram](https://user-images.githubusercontent.com/41135423/42926718-d1b6b100-8b64-11e8-823c-c907bdf42811.jpg)
