#!/bin/bash
# Inefficient bash script to print Hello World using Starwars random details.
# Thanks to wikipedia for starwars info. https://en.wikipedia.org/wiki/List_of_Star_Wars_characters
# Neil Hennessy (info@actionitservices.com.au)
#
# Interactive Run Example: ./hellostarwarsworld.sh
# Non-interactive run Run Example: ./hellostarwarsworld.sh "7 4 11 11 14 26 22 14 17 11 3"

VER="0.11"
NOW=$(date)

tmpDir="/tmp"

# Delay in seconds to display star wats details before clearing the screen.
DescDelay=15

# Function to lookup Star wars details and save to global var.

Starwars2Letter () {
	StarwarsChar=$1

  	case $StarwarsChar in
		"Shmi Skywalker")
	  	Letter="A"
	  	Description="Anakin Skywalker's mother, and Luke and Leia's paternal grandmother. Qui-Gon Jinn attempts to bargain for her freedom from slavery but fails. Shmi encourages Anakin to leave Tatooine with Qui-Gon to seek his destiny, but Anakin finds it hard to leave without her. A widowed moisture farmer named Cliegg Lars later falls in love with Shmi, and after he purchases her freedom from Watto, they marry. Shmi dies in Anakin's arms after being kidnapped and tortured by Tusken Raiders in Attack of the Clones"
	  	;;
		"Anakin Skywalker")
	  	Aka="Darth Vader"
	  	Letter="B"
	  	Description="Jedi Knight and Dark Lord of the Sith, whose fall and redemption are depicted throughout the first six Star Wars films. Originally a slave boy from Tatooine, he is believed to be the Chosen One, a legendary Jedi destined to destroy the Sith and bring balance to the Force. He trains under Obi-Wan Kenobi and secretly marries Padmé Amidala. He later began losing faith in the Jedi Order and turns to the dark side out of desperation to save his wife, becoming Darth Sidious' third apprentice, Darth Vader. However, Padmé still dies, though not before giving birth to twins Luke and Leia, who are kept hidden away from Vader for years.[8] After suffering severe injuries in a duel against Obi-Wan, he is put in a robotic suit to help him survive, and as Darth Vader, he serves as Sidious' second-in-command and enforcer throughout the Imperial Era. He is eventually redeemed when he sacrifices himself by killing Sidious to save his son, thus fulfilling the prophecy of the Chosen One. Decades later, his Force spirit helps Rey defeat a resurrected Sidious to end the Sith once and for all."
	  	;;
		"Luke Skywalker")
	  	Letter="C"
	  	Description="Former moisture farmer and Jedi Knight whose coming of age and rise as a Jedi are portrayed in the original Star Wars trilogy. He is the son of Anakin Skywalker and Padmé Amidala, Leia Organa's twin brother, and Ben Solo's uncle. After his birth, he was adopted by the Lars family on Tatooine to keep him safe and hidden from the Galactic Empire. After the Empire's defeat, Luke becomes a Jedi Master and attempts to rebuild the Jedi Order, but goes into self-exile on the planet Ahch-To after Ben falls to the dark side, becomes Kylo Ren, and takes part in the murder of his other students. He later reluctantly trains Rey, and dies helping the Resistance escape from the First Order. His Force spirit eventually helps Rey defeat a resurrected Palpatine to end the Sith once and for all, and later gives her his blessing to adopt the Skywalker surname and continue his family's legacy."
	  	;;
		"Leia Organa")
	  	Aka="Princess of Alderaan"
	  	Letter="D"
	  	Description="Princess of Alderaan, and leader of the Rebel Alliance, the New Republic, and the Resistance. She is the daughter of Anakin Skywalker and Padmé Amidala, Luke Skywalker's twin sister, Han Solo's wife, and Ben Solo's mother. After her birth, she was adopted by the Organa family to keep her safe and hidden from the Galactic Empire. While she is Force-sensitive, her powers are weaker than her brother's because she did not train as a Jedi. After her son turns to the dark side and becomes Kylo Ren, she reaches out to him through the Force and helps to redeem him in an act of self-sacrifice. Her Force spirit later gives Rey her blessing to adopt the Skywalker surname and continue her family's legacy."
	  	;;
		"Han Solo")
	  	Letter="E"
	  	Description="Smuggler and captain of the Millennium Falcon who joins the Rebel Alliance and marries Leia Organa. After he and Leia's son, Ben Solo, turns to the dark side and becomes Kylo Ren, Han attempts to redeem him, only to be killed. After his death, Kylo is haunted by thoughts of his father, and eventually redeems himself after speaking with Han's memory in a vision. "
	  	;;
	  	"Kylo Ren")
	  	Aka="Ben Solo"
	  	Letter="F"
	  	Description="Smuggler and captain of the Millennium Falcon who joins the Rebel Alliance and marries Leia Organa. After he and Leia's son, Ben Solo, turns to the dark side and becomes Kylo Ren, Han attempts to redeem him, only to be killed. After his death, Kylo is haunted by thoughts of his father, and eventually redeems himself after speaking with Han's memory in a vision. "
	  	;;
	  	"Obi-Wan Kenobi")
	  	Aka="Ben Kenobi"
	  	Letter="G"
	  	Description="Wise and skilled Jedi Master who trained Anakin Skywalker and later Luke Skywalker. He was trained by Qui-Gon Jinn and fought as a Jedi General during the Clone Wars, later becoming a member of the Jedi Council. After surviving Order 66, he goes into hiding on Tatooine and watches over Luke until he grows old enough to teach him the ways of the Jedi. Although he is killed in a duel with his former pupil, who has become Darth Vader, he continues to guide Luke as a Force spirit.[28] Obi-Wan also appears as a disembodied voice in The Rise of Skywalker, empowering Rey to face the revived Palpatine."
	  	;;
	  	"Qui-Gon Jinn")
	  	Letter="H"
	  	Description="Jedi Master featured in the prequel trilogy. He was trained by Count Dooku, and is the mentor of Obi-Wan Kenobi. He also discovers Anakin Skywalker on Tatooine and vows to train him, but is killed on Naboo in a duel with Darth Maul.[27] Qui-Gon is the first known Jedi to discover the ability to become a Force spirit after death, though he was unable to gain a physical form. He later begins communicating with Yoda through the Force to teach him this ability. Qui-Gon also appears as a diembodied voice in The Rise of Skywalker, empowering Rey to face the revived Palpatine.  "
	  	;;
	  	"Mace Windu")
	  	Letter="I"
	  	Description="Jedi Master featured in the prequel trilogy, regarded as one of the best swordsmen in Jedi history. He serves as Master of the Jedi Order in the years leading up to the Clone Wars and is a renowned Jedi General. In Revenge of the Sith, he attempts to arrest Chancellor Palpatine upon learning that he is the Sith Lord Darth Sidious, but he kills him with Anakin Skywalker's help, who then becomes Darth Vader.[29] Windu also appears as a disembodied voice The Rise of Skywalker, empowering Rey to face the revived Palpatine. "
	  	;;
	  	"Count Dooku")
	  	Aka="Darth Tyranus"
	  	Letter="J"
	  	Description="The Count of Serenno, former Jedi Master, leader of the Confederacy of Independent Systems (CIS), and Darth Sidious' second Sith apprentice as Darth Tyranus.[30] He was introduced in Attack of the Clones as a former student of Yoda and the Jedi master of Qui-Gon Jinn. He also trained General Grievous, Asajj Ventress, and briefly Savage Oppress, and recruited Jango Fett as the template for the Clone army. He is ultimately betrayed by Sidious and killed by Anakin Skywalker, who replaces him as Sidious' apprentice, in Revenge of the Sith.[30] Dooku is also a major antagonist in The Clone Wars series. "
	  	;;
	  	"Yoda")
	  	Letter="K"
	  	Description="900-year-old Jedi Grandmaster who trained several generations of Jedi and led the Jedi Council during the final years of the Galactic Republic. After surviving Order 66 in Revenge of the Sith, he goes into exile on Dagobah, and eventually trains Luke Skywalker in The Empire Strikes Back, before dying of old age in Return of the Jedi. His spirit later appears to a much older Luke in The Last Jedi to teach him one final lesson about failure, and his voice is also heard by Rey in The Rise of Skywalker. Yoda's distinct pattern of speech has become well known in popular culture"
	  	;;
	  	"Grogu")
	  	Aka="The Child"
	  	Letter="L"
	  	Description="50-year-old Force-sensitive toddler from Yoda's species who is found and adopted by the Mandalorian. He is later revealed to be a former Jedi youngling raised at the Jedi Temple on Coruscant, who was rescued during the Order 66 and hidden for his own safety. Hunted by a remnant of the Empire for the Midichlorians in his blood, he is protected by the Mandalorian, to whom he grows very attached. Grogu briefly trains with Luke Skywalker, but he ultimately chooses to be reunited with the Mandalorian rather than continue down the path to become a Jedi. The character has grown popular with the fans and media, quickly becoming an Internet meme. He was dubbed Baby Yoda by media before his name was revealed. "
	  	;;
	  	"Sifo-Dyas")
	  	Letter="M"
	  	Description="Jedi Master who is impersonated by Count Dooku to order the creation of the Clone army. Prior to the Separatist Crisis, he travelled to Oba Diah to resolve a dispute with the Pyke Syndicate. However, his ship was shot down by the Pykes under the orders of Count Dooku and he died in the crash.  "
	  	;;
	  	"Rey")
	  	Letter="N"
	  	Description="Orphan Force-sensitive scavenger from the planet Jakku, and Emperor Palpatine's secret granddaughter. She later trains to become a Jedi under Luke Skywalker and Leia Organa. She also has a complicated relationship with the fallen Jedi Kylo Ren, with whom she has a unique connection in the Force called a 'Force dyad',[13][14] and they develop romantic feelings for each other.[15][16][17] She eventually helps to redeem Kylo Ren after saving his life following their last duel and he helps her to confront her grandfather. With the aid of the redeemed Ben Solo and the past Jedi, Rey manages to defeat Palpatine and the Sith Eternal, finally ending the Sith Order. She is the protagonist of the sequel trilogy.  "
	  	;;
	  	"Sheev Palpatine")
	  	Aka="Darth Sidious"
	  	Letter="O"
	  	Description="Naboo senator and later Supreme Chancellor of the Republic, as well as secretly the Sith Lord Darth Sidious. He was trained by Darth Plagueis, whom Sidious eventually killed in his sleep. Sidious has several apprentices thereafter, including Darth Maul, Darth Tyranus, and Darth Vader. Sidious exterminates the Jedi Order and manipulates Jedi Knight Anakin Skywalker into becoming Darth Vader. He also engineers the three-years-long Clone Wars and transforms the Republic into the Galactic Empire. As Emperor, Sidious rules the galaxy for over two decades before Vader kills him to save his son, Luke Skywalker, thus fulfilling the prophecy of the Chosen One. Despite his death and the fall of his Empire, Sidious returns through powerful mastery of the dark side. He masterminds the First Order to build a new Sith Empire. Through his puppet Snoke, Palpatine manipulates Anakin's grandson, Ben Solo, into becoming Kylo Ren. He later unveils the Sith Eternal's massive armada of Xyston-class Star Destroyers, the Final Order, to reclaim the galaxy, but is finally killed by Rey, the last Jedi and Palpatine's granddaughter, ending the rule of the Sith. Sidious is the overarching villain of the Skywalker Saga. "
	  	;;
	  	"Armitage Hux")
	  	Letter="P"
	  	Description="General of the First Order who presides over Starkiller Base under Supreme Leader Snoke in The Force Awakens. In The Last Jedi, Hux commands the fleet chasing down the Resistance, first to the irritation and then to the approval of Snoke. In The Rise of Skywalker, it is revealed that Hux betrayed the First Order following Kylo Ren's rise to power and became a spy for the Resistance to provoke Kylo Ren's fall and to rule the galaxy for himself. He later helps Poe Dameron, Finn and Chewbacca escape after they are captured aboard Kylo Ren's Resurgent-class Star Destroyer Steadfast, but his treason is discovered and he is executed by Allegiant General Enric Pryde. His father was Brendol Hux, a commandant of the Galactic Empire and later General in the First Order who institutes the policy of raising stormtroopers from birth, inspired by the clone troopers of the Old Republic and the Jedi. He is eventually betrayed and killed by Captain Phasma, as part of an assassination plot with his son. He appears in the 2017 novel Phasma.  "
	  	;;
	  	"Captain Phasma")
	  	Letter="Q"
	  	Description="Officer who commands the First Order's legions of stormtroopers and Finn's nemesis in The Force Awakens and The Last Jedi. In The Force Awakens, she deactivates Starkiller's shields while being held at gunpoint by Finn, revealing that, in spite of her loyalty, she cares more about her own well-being than that of the First Order. In The Last Jedi, she stops Finn and Rose Tico from deactivating the Mega-class Star Dreadnought Supremacy's hyperspace tracking device, and later duels the former, who defeats her. She then falls to her death during the Supremacy's destruction. Phasma's backstory is explored in the novel Star Wars: Phasma. "
	  	;;
	  	"Jango Fett")
	  	Letter="R"
	  	Description="Mandalorian foundling who became a notorious bounty hunter shortly before the Clone Wars, and was chosen by Count Dooku to serve as the template for all the clones who made up the Republic's army. He is also the father of Boba Fett, whom, despite being another clone, Jango considers to be his "son".[145] In Attack of the Clones, he is shown to be under Dooku's and the Confederacy of Independent Systems' employ, and takes part in the battle of Geonosis, where he is killed by Mace Windu in the Geonosian arena.  "
	  	;;
	  	"The Mandalorian")
	  	Aka="Din Djarin"
	  	Letter="S"
	  	Description="Mandalorian bounty hunter, and the titular protagonist of The Mandalorian. He is a Mandalorian foundling, having been adopted by the Children of the Watch, a cult of religious zealots who follow the ancient Mandalorian traditions and were excluded from the mainstream Mandalorian society, after his biological parents were killed during the Clone Wars. He is also a survivor of the Great Mandalorian Purge, a member of the Tribe, and the adoptive father of Grogu, an alien toddler, whom he is protecting from the remnants of the Galactic Empire and other threats while searching for his people, the Jedi. Djarin was excommunicated from the Children of the Watch when it was discovered he had removed his helmet so Grogu could see his face, and he aided Boba Fett in the Tatooine conflict against the Pykes. "
	  	;;
	  	"Boba Fett")
	  	Letter="T"
	  	Description="Notorious Mandalorian bounty hunter and nemesis of Han Solo and Mace Windu. He is a clone of the bounty hunter Jango Fett, who raised him on Kamino to be his son. Following his father's death at the hands of Windu in Attack of the Clones, the young Fett honors his legacy by becoming a bounty hunter himself and begins a quest of vengeance against Windu, forming a small guild of bounty hunters, but eventually gives up on it and becomes one of the greatest bounty hunters in the galaxy. In The Empire Strikes Back, he is one of the six bounty hunters hired by Darth Vader to find the Millennium Falcon. Fett finds the ship and brings a bounty of its captain, Han Solo, frozen in carbonite, to Jabba the Hutt. He appears again in Return of the Jedi, at Jabba's palace. When Luke Skywalker and his friends come to rescue Han, Fett falls into the mouth of Jabba's Sarlacc during the fight. Fett survives this incident, but is scarred and loses his armor. In The Mandalorian, he rescues the assassin Fennec Shand, whom he recruits as his partner, and attempts to reclaim his armor from the Mandalorian, who agrees to give it to him in exchange for Grogu's protection. Fett honors this agreement by helping the Mandalorian rescue Grogu after he is captured by Moff Gideon. He and Shand later take over the remains of Jabba's criminal empire from Bib Fortuna and fight against the various factions vying for control of the Tatooine system.  "
	  	;;
	  	"Lando Calrissian")
	  	Letter="U"
	  	Description="Smuggler, gambler, and longtime friend of Han Solo, as well as the original owner of the Millennium Falcon. He later becomes a General in the Rebel Alliance and leads the attack on the second Death Star in Return of the Jedi. In The Rise of Skywalker, he helps the Resistance find Exegol, and leads the fleet of civilian ships during the Battle of Exegol.  "
	  	;;
	  	"Gregor")
	  	Aka="Captain CC-5576-39"
	  	Letter="V"
	  	Description="Clone Commando thought to have died in the Battle of Sarrish. Stricken with amnesia and living on Abafar, he is later told by Colonel Meebur Gascon that he is a clone trooper, and seemingly sacrifices himself to help the Colonel and his droids to get off Abafar to save many Republic lives. However, he survives this ordeal and eventually returns to the Republic, after which he removes his biochip, so that he would not be forced to carry out Order 66. When the Republic is reorganized into the Empire after the end of the Clone Wars, Gregor is forced to train conscripted Imperial soldiers, until the Bad Batch rescue him. Years later, Gregor ends up in the Seelos system with fellow retired clones Rex and Wolffe, and is shown to have developed some eccentric tendencies. He aids a group of rebels against Imperial forces in a skirmish on the planet, and later takes part in a battle to free the planet Lothal from Imperial occupation, though he is fatally wounded by an Imperial technician during the battle.  "
	  	;;
	  	"Waxer")
	  	Letter="W"
	  	Description="Clone trooper of the Ghost Company, serving in the 212th Attack Battalion during the Clone Wars. Alongside clone trooper Boil, he is considered the best scout of the Ghost Company and participates in the Battle of Ryloth and the Second Battle of Geonosis. Waxer later serves as a platoon leader with the rank of Clone Lieutenant during the Battle of Umbara, where he is killed in a friendly-fire incident orchestrated by the traitorous Jedi General Pong Krell.  "
	  	;;
	  	"Hardcase")
	  	Letter="X"
	  	Description="A mentally unstable clone trooper within the 501st Legion who participates in the search for General Grievous on Saleucami, and later in the Umbara Campaign, during which he sacrifices his life to destroy a droid supply ship. "
	  	;;
	  	"Kanan Jarrus")
	  	Aka="Caleb Dume"
	  	Letter="Y"
	  	Description="Jedi survivor of Order 66, and the de facto leader of the Ghost crew. Born as Caleb Dume, he changed his name to Kanan Jarrus to hide during Order 66; after the death of his Jedi Master, Depa Billaba, who sacrificed herself for him to escape. Later, Kanan met Hera Syndulla, and became the Jedi master of Ezra Bridger. He carries a DL-18 blaster and a blue lightsaber with a detachable hilt piece to disguise its true purpose. He is uncertain of himself in training Ezra, due to not finishing his Jedi training himself. Kanan later sacrifices himself to allow Hera to escape from an Imperial prison on Lothal, though his legacy will live through their son, Jacen Syndulla. Kanan also appears as a disembodied voice in The Rise of Skywalker, empowering Rey to face the revived Palpatine.  "
	  	;;
	  	"Finn")
	  	Aka="FN-2187"
	  	Letter="Z"
	  	Description="A former First Order stormtrooper originally designated as FN-2187 before joining the Resistance and being dubbed Finn by Poe Dameron in The Force Awakens. "
	  	;;
	  	"{space}")
	  	Letter=" "
	  	;;
	  	*)
        echo "\e[1;31m Invalid request!!!!! \e[0m"
	  	exit
	esac
}

# Script start
echo -e "\e[1;32m Hello Star wars world: $VER Started ($NOW) \e[0m"

# Input default values for HELLO WORLD
inStrDefault="7 4 11 11 14 26 22 14 17 11 3"

# Read input for non-interactive run
cmdInput=$1

# No cmd input, start interactive menu
if [ "$cmdInput" != "" ]; then
	echo -e "\e[1;33m Slient run detected, using $cmdInput \e[0m"
	starValues=(`echo ${cmdInput}`)
 else

	echo "Starabet mapping table"
	echo "======================"
	echo "0 = A"
	echo "1 = B"
	echo "2 = C"
	echo "3 = D"
	echo "4 = E"
	echo "5 = F"
	echo "6 = G"
	echo "7 = H"
	echo "8 = I"
	echo "9 = J"
	echo "10 = K"
	echo "11 = L"
	echo "12 = M"
	echo "13 = N"
	echo "14 = O"
	echo "15 = P"
	echo "16 = Q"
	echo "17 = R"
	echo "18 = S"
	echo "19 = T"
	echo "20 = U"
	echo "21 = V"
	echo "22 = W"
	echo "23 = X"
	echo "24 = Y"
	echo "25 = Z"
	echo "26 = space"
	echo "===================="

	# Read input or use deefault value
	read -p "Please enter a code to translate [$inStrDefault]: " inStr
	inStr="${inStr:-$inStrDefault}"

	# convert input from string to array
	starValues=(`echo ${inStr}`)

fi

# Input error checking/validation
for ValueVal in  "${starValues[@]}"
do
	if ! [[ "$ValueVal" =~ ^[0-9]+$ ]]; then
		echo -e "\e[1;31m Input Error! Must be an array of integers only. Try again..... \e[0m"
		exit
	fi
done

# Input count for progress
itemCount=${#starValues[@]}

echo -e "\e[1;33m Setting up and cleaning up cache files..stand by \e[0m"

# Set temp files
StarwarsHello="$tmpDir/starwars.hello"
StarwarsHelloToDisplay="$tmpDir/helloworld.txt"

# Remove old temp files if they exist
if [ -f $StarwarsHello ]; then
        rm $StarwarsHello
fi

if [ -f $StarwarsHelloToDisplay ]; then
	rm $StarwarsHelloToDisplay
fi

touch $StarwarsHello
touch $StarwarsHelloToDisplay

sleep 5
clear

# Initalise array to map numbers to Starwars names
#		0		1		   2		   3		4	    5		6		  7		8		9	10	11	12	  13	    14			15		16	      17	    18		    19		20		  21	  22	    23	        24          25	 26
Starabet=("Shmi Skywalker" "Anakin Skywalker" "Luke Skywalker" "Leia Organa" "Han Solo" "Kylo Ren" "Obi-Wan Kenobi" "Qui-Gon Jinn" "Mace Windu" "Count Dooku" "Yoda" "Grogu" "Sifo-Dyas" "Rey" "Sheev Palpatine" "Armitage Hux" "Captain Phasma" "Jango Fett" "The Mandalorian" "Boba Fett" "Lando Calrissian" "Gregor" "Waxer" "Hardcase" "Kanan Jarrus" "Finn" "{space}")

# Set i to 0 for progress counter
i=0

# Loop the input array, use Starwars2Letter functiuon to look up values and set global vars
for starNumber in "${starValues[@]}"
do
	Letter=""
	Aka=""
	Description=""

	StarWho="${Starabet[$starNumber]}"

	Starwars2Letter "$StarWho"

	# Add 1 to progress counter
	((i=i+1))
	
	# Calcualte and convert progress from integer to floating-point
	progress=$(echo 'scale=2;' "($i / $itemCount) * 100" | bc -l)

# Check for space mapping 26 otherwise print Starwars detaisl to screen.
if [[ "$StarWho" != *"{space}"* ]]; then

	echo -e "\e[1;33m $starNumber is mapped to $StarWho. Looking up details...please stand by \e[0m"
	echo ""
	sleep 2
	if [ "$Aka" ]; then
        	echo -e "\e[1;36m $StarWho, Also Known As: $Aka  \e[0m"
	        else
        		echo -e "\e[1;36m $StarWho  \e[0m"
	fi
	echo -e "\e[1;36m $Description \e[0m"
	echo ""
	echo -e "\e[1;32m $StarWho is assigned to Letter: $Letter, updating Hello file...please stand by \e[0m"
	
	# Print letter mapping to file
	echo "$Letter" >> $StarwarsHello
	echo ""
	echo -e "\e[1;35m Progress [$progress%] \e[0m"
	echo ""

	sleep $DescDelay
	clear

	else
		# Print space to file
		echo " " >> $StarwarsHello

fi

done

echo ""
echo -e "\e[1;33m Fixing up and Excuting Hello File, here we go...... \e[0m"
echo ""

# Remove character returns etc and output to new temp file
sed ':a;N;$!ba;s/\n//g' $StarwarsHello > $StarwarsHelloToDisplay

sleep 5
clear

# Print temp file result to terminal
cat $StarwarsHelloToDisplay

exit
