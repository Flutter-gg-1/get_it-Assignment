# get_it-Assignment


in this simple asg i used get_it and GetStorage to handle and save all user tweet



### HomePage



in this page there is some widget that has been used like :



-  FloatingActionButton just for showing textfiled that form it user can add tweet and the Cancel will show agin the FloatingActionButton


- TweetWidget : this widget  will show up the tweet text and have it id form it we can remove the tweet later

   - there will be loop in SingleChildScrollView to show all text in the list using getIt


- AddTweetWidget simple SizedBox that have  textfield and button when user enter some text will show up in the screen after add it to list




---


### TweetModel


- here most logic is done here we have List of TweetDataModel to save and edit the tweet


- redyData() : method will run only when the app start to load the data to the list


- delTweet() : will remove tweet by id 


- addTweet() : will just add tweet very simple

- saveAll() : after any delTweet and addTweet method trigger this method will run to update the GetStorage


    








