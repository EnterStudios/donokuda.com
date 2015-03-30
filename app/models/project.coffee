`import DS from 'ember-data'`

Project = DS.Model.extend
  active: DS.attr('boolean')
  client: DS.attr('string')
  color: DS.attr('string')
  hasCaseStudy: DS.attr('boolean')
  logoUrl: DS.attr('string')
  name: DS.attr('string')
  roles: DS.attr('string')
  teaser: DS.attr('string')
  url: DS.attr('string')
  year: DS.attr('date')

  hasUrl: (->
    @get('url') isnt undefined
  ).property('url')

coveralls =
  id: 1
  active: true
  client: "LEMUR Heavy Industries"
  color: "#3e5768"
  hasCaseStudy: true
  logoUrl: "/project-logos/coveralls.png"
  name: "Coveralls"
  roles: "Designer, Rails Development, Front-end Development"
  teaser:
    "Coveralls is a utility for developers keeping track of their code coverage
    across various projects. Did design and illustrations for the homepage and
    various internal elements. Work done at LEMUR Heavy Industries."
  url: "//coveralls.io"
  year: 2012

posters =
  id: 2
  active: true
  client: "Various Clients"
  color: "#3C6D48"
  logoUrl: "/project-logos/waters.png"
  name: "Poster Illustrations"
  roles: "Designer, Illustrator"
  teaser: "Poster design and illustrations done for clients and myself."
  hasCaseStudy: true
  year: 2011

atp =
  id: 3
  active: true
  client: "Los Angeles County Department Of Public Health"
  color: "#e56750"
  logoUrl: "/project-logos/atp.png"
  name: "Action Tobacco Prevention Site"
  teaser:
    "Action Tobacco Prevention is a resource site for the Los Angeles County
    Department of Public Health. The site provides information on the process
    of supporting policy change in the context of smoke-free environments and
    tobacco prevention. I was responsible for the overall design and
    illustration. I also shared front-end development responsibilities."
  url: "//actiontobaccoprevention.org"
  year: 2013

hound =
  id: 4
  active: true
  client: "thoughtbot, inc."
  color: "#9756C9"
  logoUrl: "/project-logos/hound.png"
  name: "Hound"
  teaser:
    "Hound is a service that keeps your code style in check. I collaborated
    with Galen Frechette on a marketing page that communicated the importance
    of having a consistant coding style."
  url: "//houndci.com"
  year: 2015

explore =
  id: 5
  active: true
  client: "Undisclosed"
  color: "#019F91"
  hasCaseStudy: true
  logoUrl: "/project-logos/explore.png"
  name: "Explore"
  roles: "Designer, Front-end development"
  teaser:
    "Explore is an app used for defining and refining audience segments in a
    mobile advertisement network. My responsibilities for this project involved
    user testing, design, and front-end development (including Ember.js
    development.)"
  year: 2014

Project.reopenClass
  FIXTURES: [
    hound
    explore
    atp
    coveralls
    posters
  ]

`export default Project`
