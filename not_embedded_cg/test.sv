import pkg::*;

program test();
    int value1;
    int value2;

    histogram h1;
    histogram h2;

    initial begin
        h1 = new();
        h2 = new();

        h1.option.name = "histogram_1";
        h2.option.name = "histogram_2";

        for(int i = 0; i < 100; i++) begin
            assert(randomize(value1) with {value1 >= 0; value1 <=100;});
            assert(randomize(value2) with {value2 >= 0; value2 <=100;});
            h1.sample(value1);
            h2.sample(value2);
        end

        $finish;
    end
endprogram
