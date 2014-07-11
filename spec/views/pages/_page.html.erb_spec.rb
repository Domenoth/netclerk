require 'spec_helper'

describe ( 'pages/page' ) {
  subject { rendered }

  let ( :page ) { Page.first }
  
  before {
    render page
  }

  it { should have_css '.page' }

  it { should have_css '.media' }

  it { should have_css 'a.pull-left' }

  it { should have_css "a[href*='#{page_path page}']" }

  it { should have_css '.pull-left img' }

  it { should have_css 'img.media-object' }

  it {
    should have_css 'img[src="http://www.google.com/s2/favicons?domain=twitter.com"]'
  }

  it { should have_css '.media-body' }

  it { should have_css '.media-body .media-heading', text: page.title }
}