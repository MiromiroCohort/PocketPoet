require_relative '../config/application'
poem1=Poem.create(:title => 'The Jabberwocky', :poet => 'Rudyard Kipling', :about => 'a monster')
poem1.assign_attributes(:poem_text => "'Twas brillig, and the slithy toves
Did gyre and gimble in the wabe:
All mimsy were the borogoves,
And the mome raths outgrabe.

'Beware the Jabberwock, my son!
The jaws that bite, the claws that catch!
Beware the Jubjub bird, and shun
The frumious Bandersnatch!'

He took his vorpal sword in hand:
Long time the manxome foe he sought --
So rested he by the Tumtum tree,
And stood a while in thought.

And, as in uffish thought he stood,
The Jabberwock, with eyes of flame,
Came whiffling through the tulgey wood,
And burbled as it came!

One two! One two! And through and through
The vorpal blade went snicker-snack!
He left it dead, and with its head
He went galumphing back.

'And hast thou slain the Jabberwock?
Come to my arms, my beamish boy!
Oh frabjous day! Callooh! Callay!'
He chortled in his joy.

'Twas brillig, and the slithy toves
Did gyre and gimble in the wabe:
All mimsy were the borogoves,
And the mome raths outgrabe. ")
poem1.save
#second
poem1=Poem.create(:about => 'walking a mile with sorrow and pleasure')
poem1.assign_attributes(:poem_text => "I walked a mile with Pleasure
She chatted all the way;
But left me none the wiser
For all she had to say.

I walked a mile with sorrow,
And ne'er a word said she,
But oh! The things I learned from her,
When sorrow walked with me.   ")
poem1.save
poem1=Poem.create(:poet => 'Gandalf', :about => 'rings and kings')
poem1.assign_attributes(:poem_text =>"All that is gold does not glitter;
all that is long does not last;
All that is old does not wither;
not all that is over is past.
Not all that have fallen are vanquished;
a king may yet be without crown,
A blade that was broken be brandished;
and towers that were strong may fall down.")
poem1.save
poem1=Poem.create(:poet => 'Shel Silverstein', :about => 'skin')
poem1.assign_attributes(:poem_text =>"She had blue skin.
And so did he.
He kept it hid
And so did she.
They searched for blue
Their whole life through,
Then passed right by –
And never knew.")
poem1.save


