# Direct Employers

Ruby wrapper for the Direct Employers API

<a name="installation">Installation</a>
------------
    gem install direct_employers

<a name="documentation">Documentation</a>
-------------
[http://rdoc.info/gems/direct_employers](http://rdoc.info/gems/direct_employers)

<a name="ci">Continuous Integration</a>
----------------------
[![Build Status](https://secure.travis-ci.org/codeforamerica/direct_employers.png)](http://travis-ci.org/codeforamerica/direct_employers)

<a name="examples">Usage Examples</a>
--------------
    require 'direct_employers'

    @client = DirectEmployers.new({key: => "abc123"}) #Add your development key
    @client.search({:moc => "11b"}) # Return an array for all matching job listings for MOC of 11b
    @client.search.query # => "First-Line Supervisors/Managers of Weapons Specialists/Crew Members, Infantry"
	@client.search.api.jobs.job.first.company # => "Tennessee Employer"


<a name="contributing">Contributing</a>
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

<a name="issues">Submitting an Issue</a>
-------------------
We use the [GitHub issue tracker](https://github.com/codeforamerica/direct_employers/issues)
to track bugs and features. Before submitting a bug report or feature request,
check to make sure it hasn't already been submitted. You can indicate support
for an existing issuse by voting it up. When submitting a bug report, please
include a [Gist](https://gist.github.com/) that includes a stack trace and any
details that may be necessary to reproduce the bug, including your gem version,
Ruby version, and operating system. Ideally, a bug report should include a pull
request with failing specs.

<a name="pulls">Submitting a Pull Request</a>
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

<a name="rubies">Supported Rubies</a>
----------------
This library aims to support and is [tested
against](http://travis-ci.org/codeforamerica/direct_employers) the following
Ruby implementations:

* Ruby 1.8.7
* Ruby 1.9.1
* Ruby 1.9.2
* [JRuby](http://www.jruby.org/)
* [Rubinius](http://rubini.us/)
* [Ruby Enterprise Edition](http://www.rubyenterpriseedition.com/)

If something doesn't work on one of these interpreters, it should be considered
a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be personally responsible for providing patches in a
timely fashion. If critical issues for a particular implementation exist at the
time of a major release, support for that Ruby version may be dropped.

Credits
-------
[Job Central](http://www.jobcentral.com)

<a name="copyright">Copyright</a>
---------
Copyright (c) 2011 Code for America.
See [LICENSE](https://github.com/codeforamerica/direct_employers/blob/master/LICENSE.md) for details.

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/direct_employers.png)](http://stats.codeforamerica.org/projects/direct_employers)
