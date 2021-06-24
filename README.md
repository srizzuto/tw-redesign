# Twitter redesign with Ruby on Rails

> This project provides a social media website created with Ruby on Rails. I tried to implement a twitter redesign that shows the MVC applied to it, so the user will find that he/she can log in, create a post, follow someone or stop doing it, and even edit profile and cover picture.

> The goal of this project was to apply MVC configuration, Forms, Active Record, Associations, Session, Cookies and Authentication, Callbacks and more.

> Unit tests and Integration test were added as well (RSpec/Capybara/Shoulda).

> Deployment implemented with Heroku.

## Built With

- Ruby v3.0.0
- Ruby on Rails v6.1.3.2

## Live Demo

[Visit the website](https://still-chamber-05044.herokuapp.com/)

### Prerequisites

Ruby: 3.0.0
Rails: 6.1.3.2
Postgres: >=9.5

### Setup

Clone repository from github to your local drive by following these steps:

- Go to the main page of the repository
- Above the listed files, click the green Code button
- You can clone the repository using:
  - GitHub CLI: gh repo `$ git clone github.comsrizzuto/tw-redesign `.
  - SSH:`$ git clone git@github.com:srizzuto/tw-redesign.git`.
  - HTTPS:`$ git clone https://github.com/srizzuto/tw-redesign `.
- Open Terminal
- Change the current working directory to the location you want the cloned directory
- Type one of the git clone commands listed above.
- Press Enter to create your local clone
- Remember: Yarn packages need to be installed by running the command <code>yarn install</code> for local setup. Otherwise, the app generates an error.
- Install all the available gems with the command `bundle install`
- Create a database by typing in the terminal <code>rails db:create</code> and then <code>rails db:migrate</code> to define changes to your database schema
- For webpacker we need to run the command `rails webpacker:install`
- Open your terminal and type <code>rails s</code>. After that join to localhost at `http://localhost:3000/`
- Feel free to sign up or sign in and start tweeting!

### Once in the app

The Navigation Bar on the left provides 4 interactions:
1. <b>HOME</b>: The page where you land after login. Here you can tweet and see what you and the ones you are following posted
2. <b>CONNECT</b>: This is the added feature. You wanna see what tweets are you missing? Click there and tweets of people that you are not following will be shown.
3. <b>PROFILE</b>: This will send you to your Profile. From here you can see all your post and, on the right bar, you'll have access to your profile picture. You'll notice a Pen over the top right of picture: If you click there you can change your profil picture, cover image and even your username and fullname!
Remember that if you click on the fullname of another user in the homepage, you'll be able to see his profile and the people this user follows. On the profile picture, you won't see the pen for editing, but instead on the top left of it there will be a `+` or `x` that allows you to either follor or unfollow the user!
4. <b>LOG OUT</b>: Pretty much self-explained. This will log out the user and sent you to the login page again.

### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.


### Run tests

```
    rpsec --format documentation
```
## Authors

👤 **Sebastian Rizzuto**

- GitHub: [@srizzuto](https://github.com/srizzuto)
- Twitter: [@sbstnrzzt](https://twitter.com/sbstnrzzt)
- LinkedIn: [Sebastian Rizzuto](https://www.linkedin.com/in/srizzuto/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- To my coding partner who helped me through all the work
- To our Stand Up Team who kept the morale up!

## 📝 License

TBA
