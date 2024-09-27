--- STEAMODDED HEADER
--- MOD_NAME: Evil
--- MOD_ID: EVIL
--- PREFIX: ev
--- MOD_AUTHOR: [mathguy]
--- MOD_DESCRIPTION: Muahahahhhahahahahahhahahaaha!
--- VERSION: 1.0.0
----------------------------------------------
------------MOD CODE -------------------------
function set_blind_editions()
    G.GAME.blind_edition = {
        Small = {},
        Big = {},
        Boss = {},
    }
    local small_rand = pseudorandom(pseudoseed('e_small'))
    if small_rand < 0.07 then
        G.GAME.blind_edition["Small"].poly = true
    elseif small_rand < 0.15 then
        G.GAME.blind_edition["Small"].holo = true
    elseif small_rand < 0.4 then
        G.GAME.blind_edition["Small"].foil = true
    end
    local big_rand = pseudorandom(pseudoseed('e_big'))
    if big_rand < 0.1 then
        G.GAME.blind_edition["Big"].poly = true
    elseif big_rand < 0.2 then
        G.GAME.blind_edition["Big"].holo = true
    elseif big_rand < 0.6 then
        G.GAME.blind_edition["Big"].foil = true
    end
    local boss_rand = pseudorandom(pseudoseed('e_boss'))
    if boss_rand < 0.2 then
        G.GAME.blind_edition["Boss"].poly = true
    elseif boss_rand < 0.4 then
        G.GAME.blind_edition["Boss"].holo = true
    elseif boss_rand < 0.7 then
        G.GAME.blind_edition["Boss"].foil = true
    end
end
----------------------------------------------
------------MOD CODE END----------------------