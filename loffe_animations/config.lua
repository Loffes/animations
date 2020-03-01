Config = {}
Config['Debug'] = false -- if this is enabled, synced animations will just spawn an npc that will do the animation with you

Config['pNotify'] = true -- use pNotify for notifications?

Config['SelectableButtons'] = { -- find controls here https://docs.fivem.net/docs/game-references/controls/
    {'~INPUT_MULTIPLAYER_INFO~', 20},
    {'~INPUT_VEH_NEXT_RADIO~', 81},
    {'~INPUT_VEH_PREV_RADIO~', 82},
    {'~INPUT_VEH_NEXT_RADIO_TRACK~', 83}, 
    {'~INPUT_VEH_PREV_RADIO_TRACK~', 84}
}

Config['OpenMenu'] = 170 -- button to open menu, set to false to disable hardcoded button opening (e.g if you want to add it to your own menu) 
Config['CancelAnimation'] = 105
-- TriggerEvent('loffe_animations:openMenu') < event to open the menu

Config['PoleDance'] = { -- allows you to pole dance at the strip club, you can of course add more locations if you want.
    ['Enabled'] = true,
    ['Locations'] = {
        {['Position'] = vector3(112.60, -1286.76, 28.56), ['Number'] = '3'},
        {['Position'] = vector3(104.18, -1293.94, 29.26), ['Number'] = '1'},
        {['Position'] = vector3(102.24, -1290.54, 29.26), ['Number'] = '2'}
    }
}

Strings = {
    ['Choose_Favorite'] = 'What button do you want to use for %s?',
    ['Select_Favorite'] = 'Add a quick bind animation',
    ['Manage_Favorites'] = 'Manage quick bind animations',
    ['Close'] = 'Cancel',
    ['Updated_Favorites'] = 'Updated quick bind animations.',
    ['Remove?'] = 'Remove "%s" as a quick bind animation?',
    ['Yes'] = 'Yes',
    ['No'] = 'No',
    ['Animations'] = 'Animations',
    ['Synced'] = 'Synced animations',
    ['Sync_Request'] = 'Do you want to %s %s?',
    ['Pole_Dance'] = '[~r~E~w~] Poledance',
    ['Noone_Close'] = 'No one close.',
    ['Not_In_Car'] = 'You\'re not in a vehicle!'
}

Config['Synced'] = {
    {
        ['Label'] = 'Hug',
        ['RequesterLabel'] = 'hug',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = 0.05,
                ['yP'] = 1.15,
                ['zP'] = -0.05,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'High five',
        ['RequesterLabel'] = 'do a high five with',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'highfive_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'highfive_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = -0.5,
                ['yP'] = 1.25,
                ['zP'] = 0.0,

                ['xR'] = 0.9,
                ['yR'] = 0.3,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Bro hug',
        ['RequesterLabel'] = 'do a bro hug with',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = -0.025,
                ['yP'] = 1.15,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Fistbump',
        ['RequesterLabel'] = 'fistbump',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationpaired@f_f_fist_bump', ['Anim'] = 'fist_bump_left', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationpaired@f_f_fist_bump', ['Anim'] = 'fist_bump_right', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = -0.6,
                ['yP'] = 0.9,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 270.0,
            }
        }
    },
    {
        ['Label'] = 'Shake hands (friend)',
        ['RequesterLabel'] = 'shake hands with',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = 0.0,
                ['yP'] = 1.2,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
    {
        ['Label'] = 'Shake hands (job)',
        ['RequesterLabel'] = 'shake hands with',
        ['Requester'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_a', ['Flags'] = 0,
        },
        ['Accepter'] = {
            ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_b', ['Flags'] = 0, ['Attach'] = {
                ['Bone'] = 9816,
                ['xP'] = 0.075,
                ['yP'] = 1.0,
                ['zP'] = 0.0,

                ['xR'] = 0.0,
                ['yR'] = 0.0,
                ['zR'] = 180.0,
            }
        }
    },
        -- NSFW animations vvvvvvvv
        {
            ['Label'] = 'Give blowjob (standing)',
            ['RequesterLabel'] = 'get a blowjob from',
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'pimpsex_hooker', ['Flags'] = 1, ['Attach'] = {
                    ['Bone'] = 9816,
                    ['xP'] = 0.0,
                    ['yP'] = 0.65,
                    ['zP'] = 0.0,
    
                    ['xR'] = 120.0,
                    ['yR'] = 0.0,
                    ['zR'] = 180.0,
                }
            },
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'pimpsex_punter', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = 'Get fucked (standing)',
            ['RequesterLabel'] = 'fuck',
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'shagloop_hooker', ['Flags'] = 1, ['Attach'] = {
                    ['Bone'] = 9816,
                    ['xP'] = 0.05,
                    ['yP'] = 0.4,
                    ['zP'] = 0.0,
    
                    ['xR'] = 120.0,
                    ['yR'] = 0.0,
                    ['zR'] = 180.0,
                }
            },
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'shagloop_pimp', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = 'Anal (standing)', 
            ['RequesterLabel'] = 'get taken in the ass by',
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'rcmpaparazzo_2', ['Anim'] = 'shag_loop_a', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'rcmpaparazzo_2', ['Anim'] = 'shag_loop_poppy', ['Flags'] = 1, ['Attach'] = {
                    ['Bone'] = 9816,
                    ['xP'] = 0.015,
                    ['yP'] = 0.35,
                    ['zP'] = 0.0,
    
                    ['xR'] = 0.9,
                    ['yR'] = 0.3,
                    ['zR'] = 0.0,
                },
            },
        },
        {
            ['Label'] = "Have sex (fuck) (driver's seat)", 
            ['RequesterLabel'] = 'get fucked by',
            ['Car'] = true,
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@vice@sex', ['Anim'] = 'frontseat_carsex_loop_m', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@vice@sex', ['Anim'] = 'frontseat_carsex_loop_f', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = "Have sex (get fucked) (driver's seat)", 
            ['RequesterLabel'] = 'fuck',
            ['Car'] = true,
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'random@drunk_driver_2', ['Anim'] = 'cardrunksex_loop_f', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'random@drunk_driver_2', ['Anim'] = 'cardrunksex_loop_m', ['Flags'] = 1,
            },
        },
        {
            ['Label'] = "Recieve blowjob (driver's seat)", 
            ['RequesterLabel'] = 'give blowjob to',
            ['Car'] = true,
            ['Requester'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'm_blow_job_loop', ['Flags'] = 1,
            }, 
            ['Accepter'] = {
                ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'f_blow_job_loop', ['Flags'] = 1,
            },
        },
        -- NSFW animations ^^^^^^^
}

Config['Animations'] = {
    {
    
        ['Label'] = 'Festive',
        ['Data'] = {
            {['Label'] = "Smoke", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SMOKING'},
            {['Label'] = "Musician", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_MUSICIAN'},
            {['Label'] = "Dj", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@dj', ['Anim'] = 'dj', ['Flags'] = 0},
            {['Label'] = "Coffee", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_DRINKING'},
            {['Label'] = "Beer", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PARTYING'},
            {['Label'] = "Air Guitar", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@air_guitar', ['Anim'] = 'air_guitar', ['Flags'] = 0},
            {['Label'] = "Air Shagging", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationfemale@air_shagging', ['Anim'] = 'air_shagging', ['Flags'] = 0},
            {['Label'] = "Rock'n'roll", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperrock', ['Anim'] = 'mp_player_int_rock', ['Flags'] = 0},
            {['Label'] = "Drunk Standing", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_bum_standing@drunk@idle_a', ['Anim'] = 'idle_a', ['Flags'] = 0},
            {['Label'] = "Vomiting", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@tie', ['Anim'] = 'vomit_outside', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Greetings',
        ['Data'] = {
            {['Label'] = "Hello", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_hello', ['Flags'] = 0},
            {['Label'] = "Wave", ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_a', ['Flags'] = 0},
            {['Label'] = "Handshake", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_a', ['Flags'] = 0},
            {['Label'] = "Hugging", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_a', ['Flags'] = 0},
            {['Label'] = "Salute", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_uppersalute', ['Anim'] = 'mp_player_int_salute', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Job',
        ['Data'] = {
            {['Label'] = "Suspect : Surrender", ['Type'] = 'animation', ['Dict'] = 'random@arrests@busted', ['Anim'] = 'idle_c', ['Flags'] = 0},
            {['Label'] = "Fishing", ['Type'] = 'scenario', ['Anim'] = 'world_human_stand_fishing'},
            {['Label'] = "Police : Investigate", ['Type'] = 'animation', ['Dict'] = 'amb@code_human_police_investigate@idle_b', ['Anim'] = 'idle_f', ['Flags'] = 0},
            {['Label'] = "Police : Use Radio", ['Type'] = 'animation', ['Dict'] = 'random@arrests', ['Anim'] = 'generic_radio_chatter', ['Flags'] = 0},
            {['Label'] = "Police : Traffic", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CAR_PARK_ATTENDANT'},
            {['Label'] = "Police : Binoculars", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_BINOCULARS'},
            {['Label'] = "Agriculture : Planting", ['Type'] = 'scenario', ['Anim'] = 'world_human_gardener_plant'},
            {['Label'] = "Mechanic : Fixing Motor", ['Type'] = 'animation', ['Dict'] = 'mini@repair', ['Anim'] = 'fixing_a_ped', ['Flags'] = 0},
            {['Label'] = "Medic : Kneel", ['Type'] = 'scenario', ['Anim'] = 'CODE_HUMAN_MEDIC_KNEEL'},
            {['Label'] = "Taxi : Talk to customer", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@driver', ['Anim'] = 'leanover_idle', ['Flags'] = 0},
            {['Label'] = "Taxi : Give bill", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@cyi', ['Anim'] = 'std_hand_off_ps_passenger', ['Flags'] = 0},
            {['Label'] = "Grocer : Give", ['Type'] = 'animation', ['Dict'] = 'mp_am_hold_up', ['Anim'] = 'purchase_beerbox_shopkeeper', ['Flags'] = 0},
            {['Label'] = "Barman : Serve Shot", ['Type'] = 'animation', ['Dict'] = 'mini@drinking', ['Anim'] = 'shots_barman_b', ['Flags'] = 0},
            {['Label'] = "Journalist : Take Photos", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PAPARAZZI'},
            {['Label'] = "All Jobs : Clipboard", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CLIPBOARD'},
            {['Label'] = "All Jobs : Hammering", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_HAMMERING'},
            {['Label'] = "Bum : Holding Sign", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_BUM_FREEWAY'},
            {['Label'] = "Bum : Human Statue", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_HUMAN_STATUE'},
    
        }    
    },
    {
        
        ['Label'] = 'Fun',
        ['Data'] = {
            {['Label'] = "Cheering", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CHEERING'},
            {['Label'] = "Super", ['Type'] = 'animation', ['Dict'] = 'mp_action', ['Anim'] = 'thanks_male_06', ['Flags'] = 0},
            {['Label'] = "Point", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_point', ['Flags'] = 0},
            {['Label'] = "Come here", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_come_here_soft', ['Flags'] = 0},
            {['Label'] = "Bring it on", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_bring_it_on', ['Flags'] = 0},
            {['Label'] = "Me", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_me', ['Flags'] = 0},
            {['Label'] = "I knew it", ['Type'] = 'animation', ['Dict'] = 'anim@am_hold_up@male', ['Anim'] = 'shoplift_high', ['Flags'] = 0},
            {['Label'] = "Exhausted", ['Type'] = 'scenario', ['Anim'] = 'idle_d'},
            {['Label'] = "I'm the shit", ['Type'] = 'scenario', ['Anim'] = 'idle_a'},
            {['Label'] = "Facepalm", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@face_palm', ['Anim'] = 'face_palm', ['Flags'] = 0},
            {['Label'] = "Calm down ", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_easy_now', ['Flags'] = 0},
            {['Label'] = "What did I do?", ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@multi@', ['Anim'] = 'react_big_variations_a', ['Flags'] = 0},
            {['Label'] = "Fear", ['Type'] = 'animation', ['Dict'] = 'amb@code_human_cower_stand@male@react_cowering', ['Anim'] = 'base_right', ['Flags'] = 0},
            {['Label'] = "Fight ?", ['Type'] = 'animation', ['Dict'] = 'anim@deathmatch_intros@unarmed', ['Anim'] = 'intro_male_unarmed_e', ['Flags'] = 0},
            {['Label'] = "It's not possible !", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_damn', ['Flags'] = 0},
            {['Label'] = "Embrace", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_a', ['Flags'] = 0},
            {['Label'] = "Finger of honor", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperfinger', ['Anim'] = 'mp_player_int_finger_01_enter', ['Flags'] = 0},
            {['Label'] = "You wanker", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperwank', ['Anim'] = 'mp_player_int_wank_01', ['Flags'] = 0},
            {['Label'] = "Bullet in the head", ['Type'] = 'animation', ['Dict'] = 'mp_suicide', ['Anim'] = 'pistol', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Sports',
        ['Data'] = {
            {['Label'] = "Flex muscles", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_muscle_flex@arms_at_side@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Lift weights", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_muscle_free_weights@male@barbell@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Do push ups", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_push_ups@male@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Do sit ups", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_sit_ups@male@base', ['Anim'] = 'base', ['Flags'] = 0},
            {['Label'] = "Do yoga", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_yoga@male@base', ['Anim'] = 'base_a', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Divers',
        ['Data'] = {
            {['Label'] = "Drink coffee", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_aa_coffee@idle_a', ['Anim'] = 'idle_a', ['Flags'] = 0},
            {['Label'] = "Sit", ['Type'] = 'animation', ['Dict'] = 'anim@heists@prison_heistunfinished_biztarget_idle', ['Anim'] = 'target_idle', ['Flags'] = 0},
            {['Label'] = "Lean against wall", ['Type'] = 'scenario', ['Anim'] = 'world_human_leaning'},
            {['Label'] = "Sunbathe Back", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SUNBATHE_BACK'},
            {['Label'] = "Sunbathe Front", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SUNBATHE'},
            {['Label'] = "Clean", ['Type'] = 'scenario', ['Anim'] = 'world_human_maid_clean'},
            {['Label'] = "BBQ", ['Type'] = 'scenario', ['Anim'] = 'PROP_HUMAN_BBQ'},
            {['Label'] = "Search", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_bj_to_prop_female', ['Flags'] = 0},
            {['Label'] = "Take selfie", ['Type'] = 'scenario', ['Anim'] = 'world_human_tourist_mobile'},
            {['Label'] = "Listen to wall/door", ['Type'] = 'animation', ['Dict'] = 'mini@safe_cracking', ['Anim'] = 'idle_base', ['Flags'] = 0},
    
        }    
    },
    {
        
        ['Label'] = 'Walking Styles',
        ['Data'] = {
            {['Label'] = "Normal M", ['Type'] = 'walking_style', ['Style'] = 'move_m@confident'},
            {['Label'] = "Normal F", ['Type'] = 'walking_style', ['Style'] = 'move_f@heels@c'},
            {['Label'] = "Depressed male", ['Type'] = 'walking_style', ['Style'] = 'move_m@depressed@a'},
            {['Label'] = "Depressed female", ['Type'] = 'walking_style', ['Style'] = 'move_f@depressed@a'},
            {['Label'] = "Business", ['Type'] = 'walking_style', ['Style'] = 'move_m@business@a'},
            {['Label'] = "Determined", ['Type'] = 'walking_style', ['Style'] = 'move_m@brave@a'},
            {['Label'] = "Casual", ['Type'] = 'walking_style', ['Style'] = 'move_m@casual@a'},
            {['Label'] = "Ate too much", ['Type'] = 'walking_style', ['Style'] = 'move_m@fat@a'},
            {['Label'] = "Hipster", ['Type'] = 'walking_style', ['Style'] = 'move_m@hipster@a'},
            {['Label'] = "Injured", ['Type'] = 'walking_style', ['Style'] = 'move_m@injured'},
            {['Label'] = "In a hurry", ['Type'] = 'walking_style', ['Style'] = 'move_m@hurry@a'},
            {['Label'] = "Hobo", ['Type'] = 'walking_style', ['Style'] = 'move_m@hobo@a'},
            {['Label'] = "sad", ['Type'] = 'walking_style', ['Style'] = 'move_m@sad@a'},
            {['Label'] = "Muscle", ['Type'] = 'walking_style', ['Style'] = 'move_m@muscle@a'},
            {['Label'] = "Shocked", ['Type'] = 'walking_style', ['Style'] = 'move_m@shocked@a'},
            {['Label'] = "Being shady", ['Type'] = 'walking_style', ['Style'] = 'move_m@shadyped@a'},
            {['Label'] = "Buzzed", ['Type'] = 'walking_style', ['Style'] = 'move_m@buzzed'},
            {['Label'] = "Hurry", ['Type'] = 'walking_style', ['Style'] = 'move_m@hurry_butch@a'},
            {['Label'] = "Proud", ['Type'] = 'walking_style', ['Style'] = 'move_m@money'},
            {['Label'] = "Short race", ['Type'] = 'walking_style', ['Style'] = 'move_m@quick'},
            {['Label'] = "Man eater", ['Type'] = 'walking_style', ['Style'] = 'move_f@maneater'},
            {['Label'] = "Sassy", ['Type'] = 'walking_style', ['Style'] = 'move_f@sassy'},
            {['Label'] = "Arrogant", ['Type'] = 'walking_style', ['Style'] = 'move_f@arrogant@a'},
    
        }    
    },
    {
        
        ['Label'] = 'NSFW',
        ['Data'] = {
            {['Label'] = "Man receiving in car", ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'm_blow_job_loop', ['Flags'] = 0},
            {['Label'] = "Woman giving in car", ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'f_blow_job_loop', ['Flags'] = 0},
            {['Label'] = "Man on bottom in car", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_sex_loop_player', ['Flags'] = 0},
            {['Label'] = "Woman on top in car", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_sex_loop_female', ['Flags'] = 0},
            {['Label'] = "Scratch nuts", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_uppergrab_crotch', ['Anim'] = 'mp_player_int_grab_crotch', ['Flags'] = 0},
            {['Label'] = "Hooker 1", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@idles@stripper', ['Anim'] = 'stripper_idle_02', ['Flags'] = 0},
            {['Label'] = "Hooker 2", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PROSTITUTE_HIGH_CLASS'},
            {['Label'] = "Hooker 3", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@backroom@', ['Anim'] = 'stripper_b_backroom_idle_b', ['Flags'] = 0},
            {['Label'] = "Strip Tease 1", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@lap_dance@ld_girl_a_song_a_p1', ['Anim'] = 'ld_girl_a_song_a_p1_f', ['Flags'] = 0},
            {['Label'] = "Strip Tease 2", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@private_dance@part2', ['Anim'] = 'priv_dance_p2', ['Flags'] = 0},
            {['Label'] = "Stip Tease On Knees", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@private_dance@part3', ['Anim'] = 'priv_dance_p3', ['Flags'] = 0},
    
        }    
    },
    
}
