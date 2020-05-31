function love.conf(t)
    t.identity = 'love-grid-based-movement'
    t.version = '11.3'

    -- Window
    t.window.title = 'Love Grid Based Movement'
    t.window.width = 512
    t.window.height = 480
    t.window.vsync = false

    t.releases = {
        title = 'love-grid-based-movement',
        loveVersion = '11.3',
        version = '0.1.0',
        author = 'John Cheesman',
        email = 'me@johncheesman.org.uk',
        description = 'Love2D grid-based movement demo with tween.lua',
        excludeFileList = {
            'doc',
            'docs',
            'readme',
            'spec',
            'tests',
            'tutorials',
            '**/*.md',
            '**/*.txt',
            '**/*.yml'
        },
        releaseDirectory = 'release',
        compile = true
    }
end
