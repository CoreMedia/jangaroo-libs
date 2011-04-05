How to build the maven site?

1. In the root folder of jangaroo-libs Create a submodule for the site folder (Don't submit the module!!!)

  repo=`git config remote.origin.url`
  git submodule add -b gh-pages $repo site

That should create a directory “site” with the current maven site.
 
2. Do the following
  cd jangaroo-libs-doc
  mvn clean install site-deploy
  
  cd ../site
  git add .
  git commit -a -m 'Generate site.'
  git push origin gh-pages
 
3. Check http://coremedia.github.com/jangaroo-libs for the new site

For more information on Maven Sites and github pages see here: http://happygiraffe.net/blog/2009/01/17/github-pages-with-maven/
