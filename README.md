# barnacle

The barnacle is unibody ortho keyboard with an Alice-like split on the pinky columns and a fixed layout that's compatible with keycap set base kits.

## inspiration + backstory

The Boardrun series was my main inspiration for this project obviously. I desperately wanted to get an acrylic frosted purple Boardrun classic but things happend so that's not likely anymore unfortunatelly.

The creativity of designers with colorful keycap designs and interesting keyboards (like the TGR Alice) got me hooked with the hobby. I exclusively switched to non-rowstagger keyboards like 3 years ago and realized that I own a lot of beautiful keycaps that I love but can't use because of these weird non-symmetrical larger-than-1.5u mod key sizes per row. Most ergonomic keyboard designs that are trying to solve that issue, I don't find aesthetically pleasing or don't like the layout.  
So I've set out to create my own: the barnacle

## design goals

- 5x6 unibody ortho keyboard
- base kit compatibility
- 3d printable on 220mm build plates
- symmetric design (amap)
- outer thumb keys next to space bars
- easily expandable later on

## layout

The main layout is fixed but the cores offer some variety.

## pcb

### core pcb

You can use any core pcb with a shell. They are smaller than 100mmx100mm so it's relativly cheep to get a small batch made.

#### basic core

This key offers the following configurations:
- 9 keys
- 3 keys and a encoder with a big knob
- 3 keys and a 0.96" OLED screen
- 2 small encoders, 1 key and a 0.96" OLED screen
- a central encoder with the biggest knob

### shell pcb

- fixed layout, so I chose hotswap sockets
- rgb underglow
- per key rgb

## case

- 3mm acrylic bottom
- 5 degree typing angle
- designed for 3d printing
- sandwich mount
- exchangable core pieces

## bom and assembly

For the bill of materials and assembly instructions see [here](./assembly.md).

## ideas and stuff I'd like to add in the future

### pcb

- [ ] *bluetooth core* with a nice!nano and without RGB (maybe with a safety cover toggle switch or sth)
- [ ] *trackball core* with PMW3360 sensor
- [ ] *trackpad core* with a 40mm GlidePoint Cirque Trackpad
- [ ] *oled core* with a large (colored?) OLED screen
- [ ] *tht core* with a window and THT components (lumberjack-style), if remotely possible
- [ ] *rgb core* with a window and a rgb matrix

### case
- [ ] *brick core* with brick plate on top

## misc

> Why is it called barnacle?

I thought of hermit crabs when I was thinking of similiarities in nature. I stuck with the crab theme, but changed the name to barnacle, because it's a fun word to say out loud.

## acknowledgements

Thanks for reading and feel free to reach out to me or create PRs if you have any questions or things to improve upon
