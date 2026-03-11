local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bouibot/ImGui-Library/refs/heads/main/Library.luau"))();

local rage = library.add_tab("Rage");
local visuals = library.add_tab("Visuals");

local a = false;
local opts = {{"1", false}, {"2", true}};
local single_opts = {{"1", false}, {"2", true}};

local int, int_x, int_y, int_z = 1, 0, 0, 0
local float_test = 5;

local color_data = {color = color3_new(1, 0, 0)};
local color_other = {color = color3_new(0, 1, 0), alpha = 1};
library.add_group(rage, "Aimbot", function()
    a = library.toggle("Toggle##aimbot", a);
    library.multi_dropdown("Multi Dropdown##aimbot", opts);
    library.dropdown("Single Dropdown##aimbot", single_opts);
    int = library.slider_int("Int slider##aimbot", 0, 100, int);
    int_x = library.slider_int("##x aimbot", 0, 100, int_x);
    int_y = library.slider_int("##y aimbot", 0, 100, int_y);
    int_z = library.slider_int("##z aimbot", 0, 100, int_z, "%i%%");
    float_test = library.slider_float("Float slider##aimbot", -50, 50, float_test);

    library.text("Color Picker"); library.same_line();
    library.color_picker3("Color##aimbot", color_data); library.same_line();
    library.color_picker4("Another Color##aimbot", color_other);
end);
