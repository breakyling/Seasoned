-- Atlases
SMODS.Atlas {
    key = "boosters",
    path = "boosters.png",
    px = 71, py = 95,
}

-- File Loading
local folder_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src")
for _, file in ipairs(folder_src) do
    assert(SMODS.load_file("src/" .. file))()
end
