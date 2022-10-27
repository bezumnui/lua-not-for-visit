gg.toast("Test cheat activated");

local L0_0, L1_1, L3_2;
L0_0 = "\"";
L1_1 = "Test cheat";
local isActive = true;
local showmenu;
function showmenu()
    local option = gg.choice({"A", "B", "Exit"});
    if option == 1 then
        gg.toast("You chose A!")
    else if option == 2 then
        gg.toast("You chose B!")
    else
        gg.toast("You chose Ext!")
        isActive = false;
    end

end

end




local menu
while isActive do
    if gg.isVisible() then
            menu = 1;
            gg.setVisible(false);
        end
            if menu == 1 then;
            showmenu();
    end
end
