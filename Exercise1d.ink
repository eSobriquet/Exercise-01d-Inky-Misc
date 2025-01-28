/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. It is {time==0:Morning.}{time==1:Noon.}{time==2:Night.}
+[Walk down the beach]->beach2
+ [Wait] {advance_time()}->seashore
-> DONE

== beach2 ==
This is further down the beach. It is {time==0:Morning.}{time==1:Noon.}{time==2:Night.}

+ [Move back up the beach] -> seashore
*{time==1}[Pick up sea shells]->shells
+[Move to the water]->edge_of_water
+ [Wait] {advance_time()}->beach2
=== edge_of_water ===
You walk down the beach were the waves begin to crash against your feet. It is {time==0:Morning.}{time==1:Noon.}{time==2:Night.}
+[Move back up the beach]->beach2
+{time!=2}[Go for a swim]->ocean
+ [Wait] {advance_time()}->edge_of_water
+{time==0}[Watch the sunrise]->sunrise
+{time==1}[Admire the sun]->highnoon
+{time==2}[Watch the sunset]->sunset
-> END
=== ocean ===
You walk into the water, it quickly comes up to your chest. Then you begin to float. 
->edge_of_water
-> END
=== sunrise ===
You watch as the sun rises above the ocean.
->edge_of_water
-> END
=== highnoon ===
You watch the sun at its highest point beaming down on the waves.
->edge_of_water
-> END
=== sunset ===
A golden and pink fill the sky as the sun shares its last moments for the day, as the moon begins to rise.
-> END


== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }  
   
        
    
    
    
