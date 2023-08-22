-- This information tells other players more about the mod
name = "Fu Xuan"
description = [[
	Không có gì để mô tả trong phiên bản đầu tiên, thậm chí còn chưa có artist để vẽ, vẫn mong rằng một ngày nào đó sẽ tìm được để đoạn code này không lãng phí.
]]
author = "dinhkarate"
version = "1.0" --First Version
forumthread = ""

api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character", "fuxuan", "fu xuan", "hsr", "honkai star rail"
}



local function Title(title)
    return {
        name=title,
        hover = "",
        options={{description = "", data = 0}},
        default = 0,
        }
end



configuration_options =
{
}