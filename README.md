#Autoloading Sass in Sinatra
This project is a sample sinatra application which enables [style injection](http://css-tricks.com/style-injection-is-for-winners/), allowing you to see css/sass changes *without* refreshing your browser.

This is especially helpful when doing responsive design, since you can have  different sized browser windows open at the same time and see how each changes affects a particular viewport.

### Getting Set Up
1. Clone and bundle
1. Install the appropriate livereload [browser extension](http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-) - there's one for Chrome, Firefox, and Safari
1. Automatically compile sass files to css:
 - From the public/css directory, run `sass --watch style.scss:style.css` (this command could change as more sass files are added to the project)
1. From the project root directory, run `guard`
 - This watches for changes to any css file in the public/css directory and delivers the file to the livereload browser plugin
1. From the project root directory, run `rackup`
1. You're done! Now anytime you save a change `style.scss`, the `style.css` file gets updated and your browser will show its changes without reloading the page.

Special thanks to Matt Brictson's [excellent blog post](http://blog.55minutes.com/2013/01/lightning-fast-sass-reloading-in-rails-32/), without which this project would not be possible.
