.include "character_map.asm"
.include "constant_and_macro.asm"

.equ My_loc, 0xF00000
.equ SizeRom, 0x8000000
.equ seen_flags_ram_offset, 0x203D800
.equ number_of_pokedex_entries_roundoff_8, 728

.include "hook_and_pointer.asm"

.org My_loc, 0xFF
.align 2
save_block_hack:
.include "save_block.asm"

.org .+0x50, 0x00
.align 2
poke_name:
.include "pokemon_data/pokemon_name.asm"

.org .+0x50, 0x00
.align 2
poke_base_stat:
.include "pokemon_data/pokemon_base_stat.asm"

.org .+0x50, 0x00
.align 2
poke_learnset:
.include "pokemon_data/pokemon_learnset.asm"

.org .+0x50, 0x00
.align 2
poke_learnset_pointer:
.include "pokemon_data/learnset_pointer.asm"

.org .+0x50, 0x00
.align 2
poke_front_sprite:
.incbin "vanilla_table/vanilla_front_sprite_table.bin"
.include "pokemon_data/new_front_sprite_table.asm"

.org .+0x50, 0x00
.align 2
poke_back_sprite:
.incbin "vanilla_table/vanilla_back_sprite_table.bin"
.include "pokemon_data/new_back_sprite_table.asm"

.org .+0x50, 0x00
.align 2
poke_normal_pal:
.incbin "vanilla_table/vanilla_normal_pal_table.bin"
.include "pokemon_data/new_normal_pal_table.asm"

.org .+0x50, 0x00
.align 2
poke_shiny_pal:
.incbin "vanilla_table/vanilla_shiny_pal_table.bin"
.include "pokemon_data/new_shiny_pal_table.asm"

.org .+0x50, 0x00
.align 2
poke_player_y:
.incbin "vanilla_table/player_y.bin"
.include "pokemon_data/new_player_y.asm"

.org .+0x50, 0x00
.align 2
poke_enemy_y:
.incbin "vanilla_table/enemy_y.bin"
.include "pokemon_data/new_enemy_y.asm"

.org .+0x50, 0x00
.align 2
poke_altitude:
.incbin "vanilla_table/altitude.bin"
.include "pokemon_data/new_altitude.asm"

.org .+0x50, 0x00
.align 2
poke_icon:
.incbin "vanilla_table/icon.bin"
.include "pokemon_data/new_icon.asm"

.org .+0x50, 0x00
.align 2
poke_icon_pal:
.incbin "vanilla_table/icon_pal.bin"
.include "pokemon_data/new_icon_pal.asm"

.org .+0x50, 0x00
.align 2
poke_tmhm_compatibility:
.include "pokemon_data/TM_compatibility.asm"

.org .+0x50, 0x00
.align 2
poke_tutor_compatibility:
.incbin "vanilla_table/tutor_comp.bin"
.include "pokemon_data/new_tutor_compatibility.asm"

.org .+0x50, 0x00
.align 2
poke_evolution:
.include "pokemon_data/evo_table.asm"

.org .+0x50, 0x00
.align 2
poke_footprint:
.incbin "vanilla_table/vanilla_footprint_table.bin"
.include "pokemon_data/new_footprint.asm"

.org .+0x50, 0x00
.align 2
poke_cry_table_1:
.incbin "vanilla_table/vanilla_cry_table.bin"
.include "pokemon_data/new_cry_table1.asm"

.org .+0x50, 0x00
.align 2
poke_cry_table_2:
.incbin "vanilla_table/vanilla_cry_table2.bin"
.include "pokemon_data/new_cry_table2.asm"

.org .+0x50, 0x00
.align 2
poke_auxillary_cry_table:
.incbin "vanilla_table/vanilla_auxillary_cry_table.bin"
.include "pokemon_data/new_auxillary_cry_table.asm"

.org .+0x50, 0x00
.align 2
poke_national_dex_order_table:
.include "pokemon_data/national_dex_order.asm"

.org .+0x50, 0x00
.align 2
poke_hoenn_dex_order_table:
.include "pokemon_data/hoenn_dex_order.asm"

.org .+0x50, 0x00
.align 2
poke_hoenn_dex_order_summary:
.include "pokemon_data/hoenn_dex_order_summary.asm"

.org .+0x50, 0x00
.align 2
poke_dex_entries:
.incbin "vanilla_table/vanilla_dex_entries.bin"
.include "pokemon_data/new_dex_entries.asm"

.org .+0x50, 0x00
.align 2
poke_front_animations:
.incbin "vanilla_table/vanilla_front_animation_table.bin"
.include "pokemon_data/new_front_animation_table.asm"

.org .+0x50, 0x00
.align 2
poke_back_animations:
.incbin "vanilla_table/vanilla_back_animation_table.bin"
.include "pokemon_data/new_back_animation_table.asm"

.org .+0x50, 0x00
.align 2
poke_frames_switching:
.incbin "vanilla_table/frame_switching_table.bin"
.include "pokemon_data/new_frame_switching_table.asm"

.org .+0x50, 0x00
.align 2
poke_animation_timing:
.incbin "vanilla_table/animation_timing.bin"
.include "pokemon_data/new_animation_timing.asm"

.org .+0x50, 0x00

.org 0x1FFFFFF, 0xFF
.byte 0xFF
