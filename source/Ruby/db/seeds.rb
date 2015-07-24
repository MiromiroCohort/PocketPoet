require_relative '../config/application'
poem1=Poem.create(:title => 'Caged Bird', :poet => 'Maya Angelou', :about => 'the desire for freedom')
poem1.assign_attributes(:poem_text => "The free bird leaps
on the back of the wind
and floats downstream
till the current ends
and dips his wings
in the orange sun rays
and dares to claim the sky.

But a bird that stalks
down his narrow cage
can seldom see through
his bars of rage
his wings are clipped and
his feet are tied
so he opens his throat to sing.

The caged bird sings
with fearful trill
of the things unknown
but longed for still
and his tune is heard
on the distant hill
for the caged bird
sings of freedom

The free bird thinks of another breeze
and the trade winds soft through the sighing trees
and the fat worms waiting on a dawn-bright lawn
and he names the sky his own.

But a caged bird stands on the grave of dreams
his shadow shouts on a nightmare scream
his wings are clipped and his feet are tied
so he opens his throat to sing

The caged bird sings
with a fearful trill
of things unknown
but longed for still
and his tune is heard
on the distant hill
for the caged bird
sings of freedom. ")
poem1.save
poem1=Poem.create(:title => 'The Road Not Taken', :poet => 'Robert Frost', :about => 'hard decisions')
poem1.assign_attributes(:poem_text => "Two roads diverged in a yellow wood,
And sorry I could not travel both
And be one traveler, long I stood
And looked down one as far as I could
To where it bent in the undergrowth;

Then took the other, as just as fair,
And having perhaps the better claim
Because it was grassy and wanted wear,
Though as for that the passing there
Had worn them really about the same,

And both that morning equally lay
In leaves no step had trodden black.
Oh, I kept the first for another day!
Yet knowing how way leads on to way
I doubted if I should ever come back.

I shall be telling this with a sigh
Somewhere ages and ages hence:
Two roads diverged in a wood, and I,
I took the one less traveled by,
And that has made all the difference. ")
poem1.save
poem1=Poem.create(:title => 'If', :poet => 'Rudyard Kipling', :about => 'hard decisions')
poem1.assign_attributes(:poem_text =>"If you can keep your head when all about you
Are losing theirs and blaming it on you;
If you can trust yourself when all men doubt you,
But make allowance for their doubting too:
If you can wait and not be tired by waiting,
Or, being lied about, don't deal in lies,
Or being hated don't give way to hating,
And yet don't look too good, nor talk too wise;

If you can dream and not make dreams your master;
If you can think and not make thoughts your aim,
If you can meet with Triumph and Disaster
And treat those two impostors just the same:.
If you can bear to hear the truth you've spoken
Twisted by knaves to make a trap for fools,
Or watch the things you gave your life to, broken,
And stoop and build'em up with worn-out tools;

If you can make one heap of all your winnings
And risk it on one turn of pitch-and-toss,
And lose, and start again at your beginnings,
And never breathe a word about your loss:
If you can force your heart and nerve and sinew
To serve your turn long after they are gone,
And so hold on when there is nothing in you
Except the Will which says to them: 'Hold on!'

If you can talk with crowds and keep your virtue,
Or walk with Kings nor lose the common touch,
If neither foes nor loving friends can hurt you,
If all men count with you, but none too much:
If you can fill the unforgiving minute
With sixty seconds' worth of distance run,
Yours is the Earth and everything that's in it,
And, which is more, you'll be a Man, my son!")
poem1.save


