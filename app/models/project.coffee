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
  color: "#3e5768"
  logoUrl: "/project-logos/waters.png"
  name: "Poster Illustrations"
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

cube =
  id: 4
  active: true
  client: "Personal Project"
  color: "#979797"
  logoUrl: "/project-logos/cube.png"
  name: "Cube"
  teaser:
    "Cube is a side project that is most likely to be shipped in the next
    year or so here's a bunch of lorem ipsum: Cum sociis natoque penatibus et
    magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus
    magna, vel scelerisque nisl consectetur et. Vestibulum id ligula porta felis
    euismod semper."
  year: 2015

Project.reopenClass
  FIXTURES: [
    cube
    atp
    coveralls
    posters
  ]

`export default Project`
