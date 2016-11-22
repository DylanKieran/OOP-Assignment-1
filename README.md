# OOP-Assignment-1
This is a github repository for my Object Orientated Programming assignment 1 for Year 2. We are required to create a sci-fi ui using the program processing. It should use the features that we have learnt so far and look good.

For my project I wanted to create a military missile launch control systems interface. I started my project by looking online for inspiration in terms of design aspects of my project. I found various images that inspired my interface but ultimately it was my own design because I wanted it to feel unique.

-- Screen 1 --

I started out with the main screen where my first task was setting up the various transparent lines you see on the screen. I then created a button that when hovered over it would highlight and when pressed would change the screen. I used a class to do this and it was useful as I used it again in my program. After finishing the button, I felt the screen was missing some detail so I added an image to the background which is loaded in from a file, I edited the image so it would blend in with the background. I created small circles in the background using a for loop that just add a bit of detail along with a red render line for added effect. I also included a full functioning digital clock that tells the correct time, I found that processing has built in hour(), minute() and seconds() functions and used it to my advantage.

To switch screens I used an integer variable called State that would switch the screens at different instances for the first instance I switch the screen when the button is pressed, I did so in the button class which I give the class the current screen and the next screen and it changes once the button is pressed. I also use this further on.

-- Screen 2 --

In my second screen which is the loading screen, I have a loading bar, loading text which changes, pulse circle, percentage loading, background lines, and the same background circles I used in the first screen. With the Loading bar I wanted it to load in two different directions rather than the standard loading one way so made it start in the centre of the screen and change in two different directions.
For the changing text I used if else statements to change the text from "Loading." - "Loading …" etc., this changes according to the distance the loading bar has gone. The percentage that is displayed is created by getting the current position of the loading bar and dividing that by the total distance it has to travel and the multiplying it by 100, then I just displayed it to the screen. The pulse circle I created by changing the ellipses diameter and as the circle gets bigger the opacity decreases, once it hits a certain point the circles diameter and opacity are reset.

To switch the screen from the loading screen to the Target screen it waits for the percentage to reach 100% once it does it has a delay of 2 seconds before it switched to next screen to give it a loading sort of feeling to it.

-- Screen 3 --

In my third screen is the target screen where you choose your target, currently it's only set up for North Korea. I used Photoshop to edit the image of Asia to match the background colour of the program and then loaded it in to the program and changed the tint to lower the opacity. I then edited the image again and coloured the target in this case North Korea in red and loaded that Image in to the program. The images switch once the mouse has been pressed to give the illusion that the country selected is highlighted in the program. I again used the red Render Line in this screen to give added effect. When the mouse is pressed target lines come over and focus in on North Korea. The program also displays the Longitude and Latitude of North Korea as well as an indicator that the target has been located. I then used the button class again and loaded in all my variables and created a button called Launch with the same principles as the first button I used.

To switch to the next screen, you press the launch button. This initiates the launce sequence

-- Screen 4 --

In Screen 4 you are greeted with the map of North Korea and a Target on the capital Pyongyang. The map was edited in Photoshop to match the background and then loaded into the program. I added a pulse circle over the capital to give a target feeling. I also added background lines that make it feel the target is locked in. I created a timer on this screen that counts down from 10 when you load into the fourth screen I did this by using Boolean variable to initiate the countdown when it loads on to the screen. I also created a loading wheel that displays at the bottom right hand corner of the screen. I used arcs to create it and offset each of them so they are a slight distance away from each other. I rotate them by changing the angle variables and move some clockwise and others anti clockwise.
When the countdown reaches 0 the missile has landed and it displays the final screen. The final screen is just a simple red background that displays the message “Mission Successful” to indicate the program has ended.

[Youtube Video of Assignment](https://youtu.be/z84tDOA0dVA)
