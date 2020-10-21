local ldb = LibStub:GetLibrary("LibDataBroker-1.1");
local dataobj = ldb:NewDataObject("ExitBroker", {
	type = "data source",
	icon = "Interface\\Icons\\inv_pandarenserpentmount_yellow",
	OnClick = function(self, button)
		if button == "LeftButton" then
			if IsShiftKeyDown() then
				Logout(); -- Logout
			elseif IsControlKeyDown() then
				ForceQuit(); -- Hard Exit Game
			elseif IsAltKeyDown() then
				-- Do Nothing
			else
				ReloadUI(); --Reload the UI
			end
		end
	end,
	OnTooltipShow = function(tooltip)
		tooltip:AddDoubleLine("To |cff1eff00RELOAD|r:", "|cff1eff00Left Click|r Icon.");
		tooltip:AddDoubleLine("To |cffff8000LOGOUT|r:", "|cffff8000<SHIFT> + Left Click|r Icon.");
		tooltip:AddDoubleLine("To |cffa335eeEXIT|r:", "|cffa335ee<CONTROL> + Left Click|r Icon.");
	end
});
