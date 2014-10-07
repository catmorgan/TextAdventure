(define start-game
  (lambda ()
    (printf "You slowly become aware of the hard, wood floor that you are laying on. It smells like
cheap alcohol, mixed in with possibly urine or manure, though you can't tell. 
As you open your eyes, you see that the room is dimly lit, but you don't think there is anything 
in the room. You sit up and look around the room more, and as your eyes adjust and focus, 
you notice a shuttered window on one wall, a simple wooden trunk to your left, and a closed door 
in front of you. You can't remember how you got here, your name, what year it is...nothing. 
All you remember is that you have something very important you have to do. So what do you do first? 
Go through the door, look out the window or open the trunk?~%")
    (define action1 (read))
    (local
      [(define actionstory1
         (lambda (action1)
           (cond
             [(equal? (string-downcase (symbol->string action1)) "go")
              (begin
                (printf "You open the door into a musty pub. This must be where that rancid smell is coming 
from...You see a couple of empty stools at the bar, with a haggard looking man tending some dirty 
glasses. There are a couple of shady looking customers sitting in the corner at a table, talking in 
hushed whispers. They eye you menacingly as you walk through the door. The bar keeper turns to you, gives
a slight nod and says in a husky voice, 'So yer awake naw? Yer got hit pritty hard. Tis unfortunate...
yer feelin' ar'ight naw?' Ye or Ne?~%")
                (set! action1 (read))
                (actionstory1 action1))]
             [(equal? (string-downcase (symbol->string action1)) "ye")
              (printf "'Ai, that's a goo' thing ta hear. Yer had me wurried fer a bit, didn' think yus 
gonner wake up! Yer gonna ha' a bruise ther fer a bit, but yer'll live. Yer know, I given yer free room and 
 boar' fer the past two days! Yer should runs errands fer me, Harhaaarhar, once yer better n' all.' You attempt
a feeble smile, trying to show that you are grateful for the man's kindness, but somehow it just doesn't come out right.
You notice that the fellows from the corner have gotten up from their seats and are approaching you. You shy away a bit;
they make you nervous. They approach you and start asking why you got into a fight with Lorrn two nights ago. 
What's your reason?~% I don't know what you're talking about, Came at me first, or get away from me!~%")
              (set! action1 (read))
              (actionstory1 action1)]
             [(equal? (string-downcase (symbol->string action1)) "I")
              (begin
                (printf "You stumble over your words because you are severely confused. 'I-I don't know what you're
talking about guys, honesty, I can't remember a thing' you put your hands up to try and suggest your friendliness...
or maybe because you are weaponless. The fellows seem to get angry, one of them shouts 'Yer landed 'im in ther sick
house yer did!' You find that statement a bit funny, considering you were out cold for two days and can't remember 
a thing...")
                (set! action1 (read))
                (actionstory1 action1))]
             [(equal? (string-downcase (symbol->string action1)) "ne")
              (printf "'Awh naw, why don' yer have a sit down, an I're get yer a nice mug o' ale and sum bread and 
cheese. That're make yer feel a bit more right.'")] 
             [(equal? (string-downcase (symbol->string action1)) "look")
              (printf "You open the shutters, and peer through the grimy windows. Outside the window, you see
pastures and farms winding through the hills. Off in the distance, you see the edge of dense forest.
The sun is just beginning to kiss the far-off hills as dusk approaches. By the draft coming 
through the window, you can tell that winter is beginning to sink its teeth into the valley.
Soon, snow will veil the landscape. Just as you were admiring the view, you notice a flash of black
scream across the grass, right in front of the window. You jump back, startled by the movement.~%")]
             [(equal? (string-downcase (symbol->string action1)) "open")
              (begin
                (printf "You stand up; your head is slightly throbbing. You feel around your hair
to notice a small bump has formed. Ignoring the pain, you walk over to the trunk. It once must have 
been beautiful, but now it old and decrepid. As you look closer, you see faded engravings around 
the edge of the wood. It looks like letters...but you don't recognize any of the characters. 
There is a large iron lock on the front of the truck-this lock is fairly new, because the hinges 
are rusted. You attempt to open the trunk, but it won't budge; the lock clearly is effective as its purpose.~%")
                (set! action1 (read))
                (actionstory1 action1))]
             [else
              (begin
                (printf "ARROW TO THE KNEE~%")
                (set! action1 (read))
                (actionstory1 action1))])))]
      (actionstory1 action1))))
    
;    (printf "Ah, I see Yordick has sent ya t' help me. What is yer name?~%")
;    (define name (read))
;    (printf "Ah, I see, so yer name is ~a eh? Well, ya better have a strong pair o'legs on ya', cause I'm
;going t' work ya t' the bones! Yaharharhar. A'nerways, what kind o'work can ya' be doin'?" name)))
;





(start-game)
