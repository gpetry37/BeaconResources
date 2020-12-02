# BeaconResources

#### Gordon Petry

BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering. This project aims to assist the homeless population in finding the resources they need. 

---

**Expected Environment for Successful Execution**

OS: GNU/Linux

Release: 3.10.0-1127.19.1.el7.x86_64

Ruby Version: 2.7.1

Rails version 6.0.3.3

---

**Starting server**
1. Clone git repository
1. Change the directory to BeaconResources/src/beacon
1. Run the following command to populate the Rails app database <br>
  <code>rails db:drop db:create db:migrate db:seed</code>
1. Run the following command to initialize the Rails app <br>
  <code>rails server --binding=(inet address) --port 3000</code>
1. Navigate to http://localhost:3000/
