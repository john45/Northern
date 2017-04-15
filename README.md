Rails Task #4
Adamenko E
Ukraine, Cherkasy

General - Rails_task - # 4
Task Definition
Simple social network
Functional Requirements:

**** - 1. User should be able to sign in/sign up by email/password (or, optionally, Facebook); (use devise)
**** - 2. User should be able to create/update/delete articles; (title, content: text (optionally with images))
3. User should be able to attach file, comment, or other article to articles. ( only one, link should be shown below content)

4. User should be able to add comments to articles;
5. User should be able to update/delete comments;
6. User should be able to follow other users;
7. User should be able to see the list of followed users, with last article of each user and last comment of shown article
8. User should be able to see articles of followed users in chronological order;
Technical Requirements
1. It should be a WEB application:
1. For the client side, use HTML5, CSS3, Bootstrap (AngularJS is better, or React); (other libraries is allowed, if required)
2. For the server side, use Ruby on Rails.
2. It should have client side and server side validation;
3. It should have a user authentication solution. The user should only have 'modify' access to his/her own articles (Devise,
Cancancan);
4. N+1 problem should be solved for item 7
5. It should have automated tests for items 2, 5, 7
