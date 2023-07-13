program test();
    my_hist h1;
    my_hist h2;

    initial begin
        h1 = new();
        h2 = new();

        h1.histogram.option.name = "histogram_1";
        h2.histogram.option.name = "histogram_2";

        for(int i = 0; i < 100; i++) begin
            assert(h1.randomize());
            assert(h2.randomize());
            h1.histogram.sample();
            h2.histogram.sample();
        end

        $finish;
    end
endprogram
