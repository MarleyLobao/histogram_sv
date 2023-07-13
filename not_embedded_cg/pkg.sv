package pkg;

    covergroup histogram() with function sample(int number);
        option.per_instance = 1;

        hist_cp: coverpoint number{
            bins zero  = {0};
            bins one   = {1};
            bins two   = {2};
            bins three = {3};
            bins four  = {4};
            bins five  = {5};
            bins six   = {6};
            bins seven = {7};
            bins eight = {8};
            bins nine  = {9};
            bins ten_to_twenty    = {[10:19]};
            bins twenty_to_thirty = {[20:29]};
            bins thirty_to_forty  = {[30:39]};
            bins forty_to_fifty   = {[40:49]};
            bins more_than_fifty  = {[50:$]};
        }
    endgroup

endpackage
