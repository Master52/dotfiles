#! /bin/bash
transmission-remote -l | grep % |
	sed " # This first sed command is to ensure a desirable order with sort
	s/.*Stopped.*/A/g;
	s/.*Seeding.*/Z/g;
	s/.*100%.*/N/g;
	s/.*Idle.*/B/g;
	s/.*%.*/M/g" |
		sort -h | uniq -c | sed " # Now we replace the standin letters with icons.
				s/A/🛑/g;
				s/B/⌛️/g;
				s/M/🔽/g;
				s/N/✅/g;
				s/Z/🌱/g" | awk '{print $2, $1}' | tr '\n' ' ' | sed -e "s/ $//g"

case $BLOCK_BUTTON in
    1) st -e transmission-remote-cli ;;
esac
