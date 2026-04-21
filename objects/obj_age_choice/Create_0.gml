bg_frame = 0;
bg_speed = 0.5;

buttons = [
    { sprite: spr_thirteenSeventeen, age: "13-17", x1: 754, y1: 226, x2: 1173, y2: 359 },
    { sprite: spr_eighteenTwentyFive, age: "18-25", x1: 746, y1: 433, x2: 1175, y2: 567 },
    { sprite: spr_TwentySixFifty,    age: "26-35", x1: 745, y1: 644, x2: 1174, y2: 773 },
    { sprite: spr_FiftyPlus,         age: "36+",   x1: 746, y1: 837, x2: 1174, y2: 966 }
];

hovered = -1;
transitioning = false;
loading_frame = 0;
selected_age = "";