<?php

use Illuminate\Database\Seeder;

class MovieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('movies')->insert([
            
            [
                'genre_id' => '1',
                'title' => 'Who Are You: School 2015',
                'photo' => 'photo/whoareyou.jpg',
                'description' => 'After losing her memory in an accident, a bullied high school orphan finds herself in the place of an identical-looking girl who\'s gone missing.',
                'rating' => '81', 
            ],
            [
                'genre_id' => '1',
                'title' => 'Crash Landing On You',
                'photo' => 'photo/cloy.jpg',
                'description' => 'A paragliding mishap drops a South Korean heiress in North Korea -- and into the life of an army officer, who decides he will help her hide.',
                'rating' => '87', 
            ],
            [
                'genre_id' => '1',
                'title' => 'Oh My Ghost',
                'photo' => 'photo/ohmyghost.jpg',
                'description' => 'Na Bong Sun may be a skilled sous chef, but she lacks the self-esteem to shine professionally and socially. Beyond her cooking talents, however, is an uncanny ability to communicate with ghosts. One day, her mystic senses go out of control when the seductive ghost of Shin Soon Ae possesses her. Imbued with a fiery new "personality," Bong Sun starts turning heads, including that of Kang Sun Woo, the hottest chef in town and Bong Sun\'s secret crush!',
                'rating' => '82', 
            ],
            
            
            [
                'genre_id' => '1',
                'title' => 'Secret Garden',
                'photo' => 'photo/secretgarden.jpg',
                'description' => 'A wealthy man and a poor stunt girl fall in love. But things get complicated when their souls become inexplicably swapped and dark secrets surface.',
                'rating' => '80', 
            ],
            [
                'genre_id' => '2',
                'title' => 'Digimon Adventure',
                'photo' => 'photo/digimonadv.jpg',
                'description' => 'Two children receive a strange egg that hatches into their very first Digimon, leading to the night that would change their lives forever.',
                'rating' => '80', 
            ],
            [
                'genre_id' => '2',
                'title' => 'Fate/Zero',
                'photo' => 'photo/fatez.jpg',
                'description' => 'War of the Holy Grail - Pursuing the power of the "Holy Grail" which grants a miracle, this is a contest in which seven magi summon seven Heroic Spirits to compete for it. In that battle whose conclusion was postponed three times, now, the fourth war commenced again. Entrusting their dearest wish of victory, the magi joined the battleground called "Fuyuki", but amongst them, there was a man who was always alone, and could not find out the meaning behind his fights. His name was Kotomine Kirei. Not comprehending the guidance of fate, Kirei was lost, and had kept questioning. Why someone like his was given the Command Seals. However, the fate of his fights crossed Kirei\'s path with a nemesis by chance. That person is - Emiya Kiritsugu. A man who was sterner than anyone else, more merciless than anyone else, and who sought the miracle of the Holy Grail.',
                'rating' => '81', 
            ],
            [
                'genre_id' => '2',
                'title' => 'Ping Pong the Animation',
                'photo' => 'photo/pingpong.jpg',
                'description' => 'Despite having drastically different personalities, high school boys Peco and Smile have been friends since childhood. Now, they’re both talented members of a table tennis club—but what happens when these sports lovers have to go up against each other in tournaments?',
                'rating' => '87', 
            ],
            [
                'genre_id' => '2',
                'title' => 'Hina Festival',
                'photo' => 'photo/hina.jpg',
                'description' => 'One night, a strange object falls on the head of Nitta, a member of the yakuza. Inside the box is a strange young girl named Hina. She has tremendous supernatural powers, and Nitta finds himself reluctantly taking her in. Her powers can come in handy for his yakuza business, but he also runs the risk of her using them on him! Not to mention, if she doesn\'t use her powers, she will eventually go berserk and destroy everything around her. Nitta and Hina\'s strange life together is just beginning...',
                'rating' => '82', 
            ],
            
            [
                'genre_id' => '3',
                'title' => 'Opera Van Java',
                'photo' => 'photo/ovj.png',
                'description' => 'Opera Van Java (disingkat OVJ) adalah acara komedi yang ditayangkan di Trans7. Ide acaranya adalah pertunjukan wayang orang versi modern. Dilakonkan oleh komedian ternama seperti Parto Patrio, Denny Cagur, Mpok Alpa, Rina Nose, Anwar Sanjaya Pigano, serta Ferdians Setiadi berperang tawa bersama para bintang tamu.',
                'rating' => '80', 
            ],
            [
                'genre_id' => '3',
                'title' => 'Indonesian Idol',
                'photo' => 'photo/idol.jpg',
                'description' => 'Indonesian Idol, berjudul Special Season Indonesian Idol: A New Chapter untuk musim kesebelas, adalah suatu ajang pencarian bakat yang diadopsi dari Pop Idol dengan sponsor dari FremantleMedia yang bekerjasama dengan RCTI. Ajang ini merupakan pencarian idola di bidang tarik suara. Indonesian Idol telah menjadi acara realitas terbesar di Indonesia. Setelah kemunculan Indonesian Idol, banyak acara realitas lain yang ditayangkan. Ajang pencarian bakat ini diadakan setiap 2 tahun sekali sejak 2008 pada tahun yang bertepatan dengan Kejuaraan Eropa UEFA, Olimpiade Musim Panas, Piala Dunia FIFA dan Olimpiade Musim Dingin.',
                'rating' => '87', 
            ],
            [
                'genre_id' => '3',
                'title' => 'Ini Talk Show',
                'photo' => 'photo/initalk.jpg',
                'description' => 'Ini Talkshow adalah acara talkshow/gelar wicara yang dikemas dengan suasana santai. Membahas persoalan hangat yang ada di masyarakat dengan cara sederhana. Di acara ini juga akan memperlihatkan suasana rumah dan karakter-karakter yang ada di rumah tersebut. Di dalam acara ini, pemain-pemain juga bermain peran atau berakting sekaligus menanyakan bintang tamu dan persoalan di masyarakat. Acara ini terkenal karena ada nyanyian Teh Asoy Geboy, Teh Bohay, Teh Sundul, Teh Anggika serta Kopi Dapet Minta dalam beberapa segmen acara ini.',
                'rating' => '83', 
            ],
            [
                'genre_id' => '3',
                'title' => 'Super Deal Indonesia',
                'photo' => 'photo/superd.jpg',
                'description' => 'Super Deal adalah sebuah acara kuis Indonesia berdasarkan lisensi dari Let\'s Make a Deal asal Amerika Serikat, milik FremantleMedia yang sekarang bernama Fremantle , yang terspektakuler di Indonesia.',
                'rating' => '78', 
            ],
        ]);
    }
}
