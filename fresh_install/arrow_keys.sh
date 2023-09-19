#! /bin/bash

# Relevant for GNOME and Wayland
# Source - https://unix.stackexchange.com/questions/414926/bind-capshjkl-to-arrow-keys-caps-to-esc/627510#627510

cd /usr/share/X11/xkb/symbols/
sudo cp us us_old
sudo cp ru ru_old

sudo sed --in-place \
    --expression 's/key <AD08>	{\[	 i,	 I		]};/key <AD08>	{[	 i,	 I, Up	]};/g' \
    --expression 's/key <AC07>	{\[	 j,	 J		]};/key <AC07>	{[	 j,	 J, Left	]};/g' \
    --expression 's/key <AC08>	{\[	 k,	 K		]};/key <AC08>	{[	 k,	 K, Down	]};/g' \
    --expression 's/key <AC09>	{\[	 l,	 L		]};/key <AC09>	{[	 l,	 L, Right	]};/g' \
    --expression 's/key <AC06>	{\[	 h,	 H		]};/key <AC06>	{[	 h,	H, BackSpace	]};/g' \
    --expression 's/key <AC10>	{\[ semicolon,	 colon		]};/key <AC10>	{\[ semicolon,	 colon, Delete	]};/g' \
    us

sudo sed --in-place \
    --expression 's/key <AD08> { \[      Cyrillic_sha,      Cyrillic_SHA  ] };/key <AD08> { [      Cyrillic_sha,      Cyrillic_SHA, Up  ] };/g' \
    --expression 's/key <AC07> { \[        Cyrillic_o,        Cyrillic_O  ] };/key <AC07> { [        Cyrillic_o,        Cyrillic_O, Left  ] };/g' \
    --expression 's/key <AC08> { \[       Cyrillic_el,       Cyrillic_EL  ] };/key <AC08> { [       Cyrillic_el,       Cyrillic_EL, Down  ] };/g' \
    --expression 's/key <AC09> { \[       Cyrillic_de,       Cyrillic_DE  ] };/key <AC09> { [       Cyrillic_de,       Cyrillic_DE, Right  ] };/g' \
    --expression 's/key <AC06> { \[       Cyrillic_er,       Cyrillic_ER  ] };/key <AC06> { [       Cyrillic_er,       Cyrillic_ER, BackSpace  ] };/g' \
    --expression 's/key <AC10> { \[      Cyrillic_zhe,      Cyrillic_ZHE  ] };/key <AC10> { [      Cyrillic_zhe,      Cyrillic_ZHE, Delete  ] };/g' \
    ru
