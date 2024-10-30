# Puppet

Training - <https://learn.puppet.com/course-catalog>  (I did the "Puppet Basics Learning Path")

Tony also recommended the LinkedIn Learning one. I'm guessing this one - <https://www.linkedin.com/learning/learning-puppet/welcome>

Puppet modules do the configuring and these can be found from the Puppet Forge - <https://forge.puppet.com/> - these are then tied up into a profile which is UCL specific which might bring things together like opening ports and enabling the monitoring of that service (e.g. open ports 80/443 and enable http/https monitoring in Thruk if configuring Apache)

Documentation:

<https://puppet.com/docs/puppet/5.5/puppet_index.html>

[Puppet Docs](https://wiki.ucl.ac.uk/display/ISV/Puppet+Docs)

[Puppet 5 Workflow](https://wiki.ucl.ac.uk/display/ISV/Puppet+5+Workflow) to submit changes (just fork project and submit a MR / ticket with link to MR, HIS will review, tag and push through r10k - it'll take a while to move through the environments)

Encrypt passwords -&gt; [YAML](https://wiki.ucl.ac.uk/display/ISV/YAML)

Dev Environment

I'm using VSCode with Puppet extension, requires PDK. Puppet lint can be simply run on the cli without all that but easier to see and fix in a proper editor

<http://puppet-lint.com/>

<https://puppet.com/try-puppet/puppet-development-kit/>

<https://puppet.com/docs/pdk/1.x/pdk.html>

[Puppet Code Testing](https://wiki.ucl.ac.uk/display/ISV/Puppet+Code+Testing)


