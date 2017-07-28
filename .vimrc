" bring in the bundles for mac and windows
set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()

runtime! common_config/*.vim
runtime! custom_config/*.vim

" colorscheme vividchalk
colorscheme vibrantink

let g:rails_projections = {
      \ "app/workflows/*.rb": {
      \   "command": "workflow",
      \   "template": "class %S\n  attr_reader :status, :message\n\n  def initialize(params)\n\n  end\n\n  def run\n\n  end\nend"
      \ },
      \ "app/scrapers/*_scraper.rb": {
      \   "command": "scraper",
      \   "template": "class %SScraper\n  attr_reader :io\n\n  def initialize(io)\n    @io = io\n  end\n\n  def content\n    # Scrape content here\n  end\nend"
      \ }}
