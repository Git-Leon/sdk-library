
### Install WAMP
1. Download and install [WAMP](https://sourceforge.net/projects/wampserver/files/WampServer%203/WampServer%203.0.0/wampserver3.1.9_x64.exe/download?use_mirror=newcontinuum&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fwampserver%2Ffiles%2Flatest%2Fdownload).
2. When WAMP prompts you to select a browser, select [chrome](https://www.google.com/chrome/thank-you.html?statcb=1&installdataindex=defaultbrowser#).
    * The chrome directory path can be found here
        * `C:\Program Files (x86)\Google\Chrome\Application\chrome.exe`


### Running WAMP
1. Start the newly installed WAMP application.
    * You can either
        1. Select WAMP from the start menu
        2. Execute the following command in the terminal:
            * `start C:\wamp64\wampmanager.exe`

### Manage phpMyAdmin
1. Navigate to `http://localhost/phpmyadmin/index.php`
2. Enter `root` for the username.
3. press enter

### Manage databases
3. Select the `databases` tab
4. Create a database named `wordpress`.

### Download Wordprss
1. Download [wordpress.zip](https://wordpress.org/latest.zip)
2. extract `wordpress.zip` in `C:\wamp64\www` directory
3. From Visual Studio Code, select `Add Folder To Workspace`.
    * Select the following directory: `C:\wamp64\www\wordpress`
4. edit `wp-config-sample.php`
    * edit `line 19` by renaming `'database_name_here'` to `wordpress`
    * edit `line 22` by renaming `'username_here'` to `'root'`.
    * edit `line 25` by setting `'password_here'` to `''`
5. Save the newly edited `wp-config-sample.php` as a new file named `wp-config.php`


### Configure Wordpress
1. Navigate to `localhost/wordpress/wp-admin`
2. Set `username` to `root`
3. Set `password` to `1`
4. Set `email`
5. Log in