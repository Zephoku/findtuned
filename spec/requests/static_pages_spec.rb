require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
    #it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }

  end

  describe "Home page" do
    before { visit root_path }
    #let(:heading) { 'FindTuned' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title ('| Home') }
  end

  describe "Sign in page" do
    before { visit signin_path }
    let(:page_title) { "Sign in" }

    it_should_behave_like "all static pages"
  end

  describe "Sign up page" do
    before { visit signup_path }
    let(:page_title) { "Sign up" }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:page_title) { "About" }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:page_title) { "Contact" }

    it_should_behave_like "all static pages"
  end
  
end
