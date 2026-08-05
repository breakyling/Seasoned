-- Atlases

-- File Loading
local folders = {"reworks", "misc"}
for _, folder in ipairs(folders) do
    local folder_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/" .. folder)
    for _, file in ipairs(folder_src) do
        assert(SMODS.load_file("src/" .. folder .. "/" .. file))()
    end
end
