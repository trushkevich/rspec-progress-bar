# rspec-progress-bar

[ProgressBar](https://github.com/paul/progress_bar) formatter for RSpec

Output
======

```
[###################################################] [27/27] [100.00%] [00:01] [00:00] [16.18/s]
Finished in 1.4 seconds (files took 6.57 seconds to load)
27 examples, 0 failures
```

When used along with [rspec-instafail](https://github.com/grosser/rspec-instafail):

```
[#######################                              ] [ 4/27] [ 14.81%] [00:01] [00:07] [ 3.22/s]
  1) ApplicationController#sign_out_and_redirect with JSON should return JSON indicating success
     Failure/Error: json_response = JSON.parse response.body
     A JSON text must at least contain two octets!
     # /Users/miwillhite/.rvm/gems/ruby-1.9.2-p0/gems/json_pure-1.4.6/lib/json/common.rb:146:in `initialize'
     # /Users/miwillhite/.rvm/gems/ruby-1.9.2-p0/gems/json_pure-1.4.6/lib/json/common.rb:146:in `new'
     # /Users/miwillhite/.rvm/gems/ruby-1.9.2-p0/gems/json_pure-1.4.6/lib/json/common.rb:146:in `parse'
     # ./spec/controllers/application_controller_spec.rb:17:in `block (4 levels) in <top (required)>'
[###################################################] [27/27] [100.00%] [00:01] [00:00] [16.18/s]
Failures:

  1) ApplicationController#sign_out_and_redirect with JSON should return JSON indicating success
     Failure/Error: json_response = JSON.parse response.body
     A JSON text must at least contain two octets!
     # /Users/miwillhite/.rvm/gems/ruby-1.9.2-p0/gems/json_pure-1.4.6/lib/json/common.rb:146:in `initialize'
     # /Users/miwillhite/.rvm/gems/ruby-1.9.2-p0/gems/json_pure-1.4.6/lib/json/common.rb:146:in `new'
     # /Users/miwillhite/.rvm/gems/ruby-1.9.2-p0/gems/json_pure-1.4.6/lib/json/common.rb:146:in `parse'
     # ./spec/controllers/application_controller_spec.rb:17:in `block (4 levels) in <top (required)>'

Finished in 1.52 seconds (files took 6.63 seconds to load)
27 examples, 1 failure
```

Install
=======

```Bash
gem install rspec-progress-bar

# .rspec
--require rspec_progress_bar/formatter
--format RspecProgressBar::Formatter
```

Authors
=======

Anton Trushkevich<br/>
trushkevich@gmail.com<br/>
License: MIT
