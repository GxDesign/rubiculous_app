require "desktop"

Desktop::CLI.start %w[set public/images/rubiculous.png]

sleep 20

Desktop::CLI.start %w[set public/images/reveal.jpg]

