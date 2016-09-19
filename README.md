# College Admin Theme [![Build Status](https://travis-ci.org/BDMADE/college_admin.svg?branch=master)](https://travis-ci.org/BDMADE/college_admin) [![Gem Version](https://badge.fury.io/rb/college_admin.svg)](https://badge.fury.io/rb/college_admin)

Welcome to College Admin theme. It is theme engine for making rails. It renders an administrator theme in your project.

# Demo
Please visit this site to see it's [demo](https://ubold.herokuapp.com/)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'college_admin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install college_admin

## Usage
From your controller just call this theme engine as:
 `layout 'college_admin'` 
 
<h5>Change jquery version:</h5>
 This template engine needs jquery2 version. So, you have to change 
  jquery version.
  
  Open `application.js` in `app-> assets -> javascripts` folder.
  Then, use `require jquery2` instead of `require jquery`
  and restart in your system

<h5>For adding logo:</h5>

Step 1: 

Make a file named `_logo.html.erb` in your `app->views->shared` folder.
Write down this code in your `_logo.html.erb`:

```
<% content_for :logo do %>
<div class="logo">
  <a href="#" class="logo"><span>C<i class="zmdi zmdi-album"></i>llege</span></a>
</div>
<% end %>
```
You can alter the logo name and path

Step 2: 

Make file named `_extends_admin_layout.html.erb` in your `app->views->shared` folder.
Then, write down this code in your `_extends_admin_layout.html.erb`

```
<%= render partial: 'shared/logo' %>
```

Step 3:

Now, open in your all admin view files as example as `index.html.erb`, `edit.html.erb`, `show.html.erb` and `new.html.erb`, then write down
given bellow code:

```
<%= render 'shared/extends_admin_layout' %>
```


<h5>For adding user profile:</h5>

Step 1: 

Make a file named `_profile.html.erb` in your `app->views->shared` folder.
Write down this code in your `_profile.html.erb`:

```
<% content_for :profile do %>
<li class="dropdown">
  <a href="" class="dropdown-toggle waves-effect waves-light profile" data-toggle="dropdown" aria-expanded="true">
  <%= image_tag 'users/avatar-1.jpg', class: 'img-circle' %>
  </a>
  <ul class="dropdown-menu">
   <li><a href="#"><i class="ti-user m-r-5"></i> Profile</a></li>
   <li><a href="#"><i class="ti-settings m-r-5"></i> Settings</a></li>
   <li><a href="#"><i class="ti-lock m-r-5"></i> Lock screen</a></li>
   <li><a href="#"><i class="ti-power-off m-r-5"></i> Logout</a></li>
 </ul>
</li>

<% end %>
```

Step 2: 

Make file named `_extends_admin_layout.html.erb` in your `app->views->shared` folder.
Then, write down this code in your `_extends_admin_layout.html.erb`

```
<%= render partial: 'shared/profile' %>
```

Step 3:

Now, open in your all admin view files as example as `index.html.erb`, `edit.html.erb`, `show.html.erb` and `new.html.erb`, then write down
given bellow code:

```
<%= render 'shared/extends_admin_layout' %>
```

<h5>For adding search:</h5>

Step 1: 

Make a file named `_search.html.erb` in your `app->views->shared` folder.
Write down this code in your `_search.html.erb`:

```
<% content_for :search do  %>
<li>
            <form role="search" class="navbar-left app-search pull-left hidden-xs">
              <input type="text" placeholder="Search..." class="form-control">
              <a href=""><i class="fa fa-search"></i></a>
            </form>
          </li>
<% end %>
```

Step 2: 

Make file named `_extends_admin_layout.html.erb` in your `app->views->shared` folder.
Then, write down this code in your `_extends_admin_layout.html.erb`

```
<%= render partial: 'shared/search' %>
```

Step 3:

Now, open in your all admin view files as example as `index.html.erb`, `edit.html.erb`, `show.html.erb` and `new.html.erb`, then write down
given bellow code:

```
<%= render 'shared/extends_admin_layout' %>
```


<h5>For adding navigation:</h5>

Step 1: 

Make a file named `_nav.html.erb` in your `app->views->shared` folder.
Write down this code in your `_nav.html.erb`:

```
<% content_for :nav do %>
  <!--For a single menu content-->
  <li class="has-submenu active">
    <a href="#"><i class="zmdi zmdi-view-dashboard"></i>Dashboard</a>
  </li>

<!--For a normal menu content-->
  <li class="has-submenu">
    <a href="#"><i class="zmdi zmdi-palette"></i>UI Kit</a>
    <ul class="submenu">
      <li><a href="#">Portlets</a></li>
      <li><a href="#">Checkboxs-Radios</a></li>
      <li><a href="#">Tabs</a></li>
      <li><a href="#">Modals</a></li>
    </ul>
  </li>
<% end %>

```

Step 2: 

Make file named `_extends_admin_layout.html.erb` in your `app->views->shared` folder.
Then, write down this code in your `_extends_admin_layout.html.erb`

```
<%= render partial: 'shared/nav' %>
```

Step 3:

Now, open in your all admin view files as example as `index.html.erb`, `edit.html.erb`, `show.html.erb` and `new.html.erb`, then write down
given bellow code:

```
<%= render 'shared/extends_admin_layout' %>
```





## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/BDMADE/college_admin).This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

