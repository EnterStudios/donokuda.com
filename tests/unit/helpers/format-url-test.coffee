`import { formatUrl } from 'portfolio/helpers/format-url'`

module 'FormatUrlHelper'

test 'it strips away the url protocol', ->
  result = formatUrl "//testexample.site"
  equal result, "testexample.site"
