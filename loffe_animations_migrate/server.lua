local typeMigration = {
    ['anim'] = 'animation',
    ['scenario'] = 'scenario',
    ['attitude'] = 'walking_style'
}

local string = ''

GetData = function(items)
    local string = ''
    for k, v in pairs(items) do
        local repet = '0'
        if v['repet'] then -- idk why, some swedish config.lua's have "repet"?! (means "the rope" lol)
            repet = v['repet']
        end
        local type = typeMigration[v['type']]
        if type == 'animation' then
            string = string .. ([[
        {['Label'] = "%s", ['Type'] = 'animation', ['Dict'] = '%s', ['Anim'] = '%s', ['Flags'] = %s},
]]):format(v['label'], v['data']['lib'], v['data']['anim'], repet)
        elseif type == 'scenario' then
            string = string .. ([[
        {['Label'] = "%s", ['Type'] = 'scenario', ['Anim'] = '%s'},
]]):format(v['label'], v['data']['anim'])
        elseif type == 'walking_style' then
            string = string .. ([[
        {['Label'] = "%s", ['Type'] = 'walking_style', ['Style'] = '%s'},
]]):format(v['label'], v['data']['lib'])
        end
    end
    return string
end

for k, v in pairs(Config['Animations']) do
    local data = GetData(v['items'])
    string = string .. ([[
{
    
    ['Label'] = '%s',
    ['Data'] = {
%s
    }    
},
]]):format(
    v['label'],
    data
)
end

SaveResourceFile(GetCurrentResourceName(), "animations.txt", string, -1)

print('File was saved to loffe_animations_migrate -> animations.txt')