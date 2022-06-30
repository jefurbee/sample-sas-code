data crack;
    input id age load;
    datalines;
    1  20 11.45
    2  20 10.42
    3  20 11.14
    4  25 10.84
    5  25 11.17
;

proc reg data=crack;
    model load = age;
    plot predicted. * age = 'P' load * age='*'/overlay;
run;