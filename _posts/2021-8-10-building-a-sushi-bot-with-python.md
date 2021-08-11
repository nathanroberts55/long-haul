---
layout: post
title:  "Building a Sushi Bot with Python"
date:   2021-8-11
comments: true
---

<p class="intro"><span class="dropcap">D</span>uring the height of the pandemic, many restaurants adopted food delivery services to cope with everyone being stuck at home. I soon developed the bi-weekly payday trend of ordering from local restaurants in support. This creative new adaptation also included a local sushi place that I had never been to BUT had an <em>amazing</em> lunchtime deal that came with free delivery! However, despite this rare find, it wouldn’t be me if I didn’t use python to automate this new payday tradition.</p>

### The Problem      
       
While getting sushi every other week was wonderful, I had a few issues that happened every time I was ready to order on payday:

- Lunch orders are ONLY accepted after 11 AM EST
- Orders are placed in a queue, so first, come is the first served
- To get an order in first, I end up ordering the same thing every time

Which made me think since this is a new routine, why not automate the process with python. With the problem identified I felt like I had enough direction to make a program to speed up this process.

### Solution: Sushi Samurai Bot is Born

Knowing some of the key choke points in this process, I decided to outline the requirements that I wanted to have for the program.

The first thing I wanted to address was the lack of variety in my orders. Because I was trying to get my orders in quickly, I ordered the same rolls every time. Also, because I was not writing down what my orders were, in two weeks when payday came back around, I never knew what I got the previous time.

So, to fix the variety issue, I created a file with all the lunch menu rolls for the program to read. Then another file with the last rolls that I ordered. The script would read in from the menu file and then the last ordered file. The bot removed recently ordered items from the menu to ensure I got new rolls. Then, I used the random module to randomly select six rolls (which is how many I get each payday) from the remaining rolls on the menu.

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/Rf9ShctbZZQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

Next, I wanted to solve the issue of getting the order in quickly. Initially, I was going to have the program run bi-weekly on the startup of my computer and post it to the console. However, I do not like the dependence on a singular computer for the program to run. Then my AWS training kicked in, and I decided to run it in a cloud solution. My cloud solution of choice is [Heroku](https://www.heroku.com/), which is a SaaS platform ran on AWS where I could upload my script where it would always be running whenever I needed it. Once deployed in the cloud, I had the script run every payday at 10:55 AM and text me the order it has created. The notification served as a reminder AND eliminated the need for me to make the decision.

### Updates and Possible Expansion

After that initial deployment, the bot worked well, but there were things that I wanted to change to make the app work better for me.

#### Changes

Originally I had the bot send me a message at 10:55 PM every other Friday. But one day I wanted to order sushi on a non-payday, but the bot wasn’t scheduled, and I had no way to communicate with it. However, since I had to create a google email account for the bot to send messages from, I decided to use the email to communicate with the bot. I changed the bot to listen to the email for an email that has “Hit Me” in the body, will reply to the sender with the six sushi rolls. This addition opened the tool up to my friends and me to use the “service” whenever we wanted to get sushi.

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/6DD4IOHhNYo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

#### Future Updates

As it stands, I have the bot read the menu from a static list that I created, thinking that the menu wouldn’t change. And of course, the menu <em>has</em> changed since I have created the bot, meaning that a few menu options no longer exist. So, I think with the use of beautiful soup or some other web scraping library, I could have the bot check the menu and update the menu file.

Also, having the bot send you the sushi that you should order is great, I think having the bot order for you would be better. The process of ordering is the same every time too. I think the hiccup would come from the site. Since I use google pay as my method for ordering, I believe there would be a mechanism that would prevent the bot from completing the order. But the high-level, ideal process would be:

1.	A user sends the Sushi Samurai bot “Hit Me” and some rolls (must be multiple of 3 or 2 for the lunch deal)
2.	Bot replies with the specified number of roles and the prompt “Would you like me to order for you?”
3.	The user can reply yes or no:
    -	If the user replied yes, then the bot asks for information to complete the order and sends in order
    -	If no, then the bot sends thank you message and ends the sequence

Finally, I have had several friends mention that making this bot more robust would also be cool. Meaning that they can point the bot to specific or random local restaurants and have it randomly select menu items to have delivered. That way they can discover new items and food in their surrounding areas. I think that would be cool but also require a lot more time and developer power. So, if that sounds like something you would be interested in building with me, feel free to contact me on our contact page!

### Conclusion

I had a wonderful time planning and developing this bot that helped automate a tradition that has grown near and dear to my heart. It also was a great exercise in python, which I love more and more as I spend time learning about every day. As always, I appreciate you for taking the time to read about my discoveries and learning in my tech journey! If you want more visibility into my day-to-day learning follow me on [Twitter](https://twitter.com/naterobertstech) or reach out to me directly using the [Contact Page](https://naterobertstech.com/contact/).
