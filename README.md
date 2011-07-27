# Direct Employers

Ruby wrapper for the Direct Employers API

Installation
------------
    gem install direct_employers

Documentation
-------------
[http://rdoc.info/gems/direct_employers](http://rdoc.info/gems/direct_employers)

Continuous Integration
----------------------
[![Build Status](https://secure.travis-ci.org/codeforamerica/direct_employers.png)](http://travis-ci.org/codeforamerica/direct_employers)

Usage Examples
--------------
    require 'direct_employers'

    @client = DirectEmployers.new({key: => "abc123"}) #Add your development key
    @client.search({:moc => "11b"}) # Return an array for all matching job listings for MOC of 11b
    @client.search.query # => "First-Line Supervisors/Managers of Weapons Specialists/Crew Members, Infantry"
	@client.search.api.jobs.job.first.company # => "Tennessee Employer"


Contributing
------------
In the spirit of [free software](http://www.fsf.org/licensing/essays/free-sw.html), **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues](https://github.com/codeforamerica/futures_pipeline/issues)
* by reviewing patches
* [financially](https://secure.codeforamerica.org/page/contribute)

Submitting an Issue
-------------------
We use the [GitHub issue tracker](https://github.com/codeforamerica/direct_employers/issues)
to track bugs and features. Before submitting a bug report or feature request,
check to make sure it hasn't already been submitted. You can indicate support
for an existing issuse by voting it up. When submitting a bug report, please
include a [Gist](https://gist.github.com/) that includes a stack trace and any
details that may be necessary to reproduce the bug, including your gem version,
Ruby version, and operating system. Ideally, a bug report should include a pull
request with failing specs.

Submitting a Pull Request
-------------------------
1. Fork the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add documentation for your feature or bug fix.
5. Run <tt>bundle exec rake doc:yard</tt>. If your changes are not 100% documented, go back to step 4.
6. Add specs for your feature or bug fix.
7. Run <tt>bundle exec rake spec</tt>. If your changes are not 100% covered, go back to step 6.
8. Commit and push your changes.
9. Submit a pull request. Please do not include changes to the gemspec, version, or history file. (If you want to create your own version for some reason, please do so in a separate commit.)

Credits
-------
[Job Central](http://www.jobcentral.com)

Copyright
---------
Copyright (c) 2011 Code for America.
See [LICENSE](https://github.com/codeforamerica/direct_employers/blob/master/LICENSE.md) for details.

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/direct_employers.png)](http://stats.codeforamerica.org/projects/direct_employers)
