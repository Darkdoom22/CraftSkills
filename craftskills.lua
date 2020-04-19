_addon.name = "CraftSkills"
_addon.author = "Uwu/Darkdoom"
_addon.version = "1.0"

files		= require 'files'
texts		= require 'texts'


require('default_settings')
settings = (defaults)
text_box = texts.new(settings.player)

Timer = os.clock()

function get_skills()
  
  player = windower.ffxi.get_player()
  bonecraft = player.skills.bonecraft
  smithing = player.skills.smithing
  goldsmithing = player.skills.goldsmithing
  woodworking = player.skills.woodworking
  clothcraft = player.skills.clothcraft
  leathercraft = player.skills.leathercraft
  alchemy = player.skills.alchemy
  cooking = player.skills.cooking
  fishing = player.skills.fishing

end

function display_box()
  
  if player ~= nil then
    
    new_text = "Bonecraft: " .. bonecraft
    .. "\nSmithing: " .. smithing .. "\nWoodworking: "
    .. woodworking .. "\nClothcraft: " .. clothcraft
    .. "\nGoldsmithing: " .. goldsmithing
    .. "\nLeathercraft: " .. leathercraft 
    .. "\nAlchemy: " .. alchemy
    .. "\nCooking: " .. cooking
    .. "\nFishing: " .. fishing .. "\n"
     
    
    if new_text ~= nil then
    text_box:text(new_text)
    text_box:visible(true)
    end
    end
  
end

windower.register_event('prerender', function()
    
    if os.clock() - Timer > 5 then
      get_skills()
      display_box()
      Timer = os.clock()
      
    end
    
    
  end)

