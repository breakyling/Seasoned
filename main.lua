-- Atlases

-- File Loading
local folder_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src")
for _, file in ipairs(folder_src) do
    assert(SMODS.load_file("src/" .. file))()
end
