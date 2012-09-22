require("base.lookat")

module("item.general.jewel", package.seeall)

-- Normal Items:
-- UPDATE common SET com_script='item.general.jewel' WHERE com_itemid IN (225, 1840, 1858);

-- Priest Items:
-- UPDATE common SET com_script='item.general.jewel' WHERE com_itemid IN (62,67,71,82,83,334,463,465);

-- Weapon Items:
-- UPDATE common SET com_script='item.general.jewel' WHERE com_itemid IN ();

function LookAtItem(user, item)
    world:itemInform(user, item, base.lookat.GenerateLookAt(user, item, base.lookat.JEWELERY));
end;

function UseJewel_67 (User, SourceItem)
    -- ruby amulett

end

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )
    -- list with jewles and the functions belonging to them
    UseMe={}
	-- UseMe[ITEMID] = function(...) UseJewl_ITEMID(...) end
	UseMe[67] = function(User, SourceItem) UseJewel_67(User, SourceItem) end -- ruby amulett
	
	if not UseMe[SourceItem.id] then -- security check
	    return -- if the jewel is not defined yet, we return
    else
        UseMe[SourceItem.id](User, SourceItem, TargetItem, Counter, Param, ltstate)
    end    	
end 