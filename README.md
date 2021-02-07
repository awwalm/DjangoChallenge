# Coding Challenge: Python Web Application With Django

A simple Python web application for tracking ping status between switches and terminals, using Django and MySQL. This coding challenge also represents the creator's first foray into the world of Django.

## Installation

#### Dependencies
This project was created with [PyCharm](https://www.jetbrains.com/pycharm/) 
 so, ideally, a direct import should hypothetically work. Otherwise, move the nosairis folder from root directory to your desired directory and then install the following dependencies using the package manager [pip](https://pip.pypa.io/en/stable/).

```bash
pip install django
```
```bash
pip install mysqlclient
```
```bash
pip install plotly
```

#### MySQL Preconfiguration
The MySQL database routines have already been configured. You must however create an identical empty one with the same user credentials (so you don't need to modify the code further) with the following commands (preferably as ```root```).

```mysql
CREATE DATABASE switches CHARACTER SET UTF8;
CREATE USER madjango@localhost IDENTIFIED BY '123django';
GRANT ALL PRIVILEGES ON switches.* TO madjango@localhost;
FLUSH PRIVILEGES;
```

Then navigate to ```nosairis/nosairis/management``` and import the ```<preferred_format>SWITCHES_ALL_DATABASE_EXPORT``` file (in SQL or CSV extension) into the ```switches``` database and you're good to go!

⚠ IMPORTANT: Edit the ```settings.py``` file and the ```SECRET_KEY``` variable to point to your own [unique Django secret key](https://stackoverflow.com/a/47117966).

## Usage

From root dir, ```cd``` to ```nosairis/nosairis``` and run the following commands to get started.

```bash
python manage.py runserver
```

## Screenshots
![image](https://user-images.githubusercontent.com/67423428/107130203-354ea980-6906-11eb-9684-a8c0f5f28170.png)

![image](https://user-images.githubusercontent.com/67423428/107130231-6af39280-6906-11eb-9c3a-7e93ae982161.png)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)