gg.toast("Test cheat activated", true);

local L0_0, L1_1, L3_2;
L0_0 = "\"";
L1_1 = "Test cheat";
local isActive = true;
local showmenu;
function showmenu()
    local option = gg.choice({"freeze coins", "B", "Exit"});
    if option == 1 then
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("560", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1);
        local offset = gg.getResults(1)[1].address;
        local coins = gg.searchAddress(tostring(offset + 38))
        print(coins)
        
        
        gg.toast("---!")
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
 
