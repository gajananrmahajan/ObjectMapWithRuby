 This projects uses Object Map mechanism which keeps locators separated
 from actual tests and makes tests easily maintainable.

# HOW TO RUN
1. First, install gem called 'bundler' if it's not installed on your
   machine. This gem helps to install

   $gem install bundler

2. You'll have to install all gems mentioned in Gemfile. Install them
   by following command (assuming that you're at base of project
	 directory)

	 $ bundle install

   If bundle is already installed, then update it to use latest gem
	 version by:

	 $ bundle update

3. Now, you're good to run script:

   $ ruby tests/bmi.rb

