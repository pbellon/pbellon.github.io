angular.module('dummPortfolio.constants').constant 'constants.projects',
    all: [
        {
            id: 1
            link: 'https://www.detective.io'
            picture: 'images/screenshots/detective-io.png'
            thumbnail: 'images/screenshots/detective-io.thumb.png'
            # i18n tags keys
            tags: [ 'MODELS.TAGS.DDJ']
            github: 'https://github.com/jplusplus/detective.io/'
        },
        {
            id: 2
            picture: 'images/screenshots/spendingstories.png'
            thumbnail: 'images/screenshots/spendingstories.thumb.png'
            tags: ['MODELS.TAGS.DDJ', 'MODELS.TAGS.VIZ']
            link: 'http://spendingstories.org'
            github: 'https://github.com/okfn/spendingstories/'
        },
        {
            id: 3
            picture: 'images/screenshots/arte-wow.png'
            thumbnail: 'images/screenshots/arte-wow.thumb.png'
            link: 'http://europe.arte.tv/fr/evenements/world-of-work/'
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'MODELS.TAGS.DDJ', ]
        },
        {
            id: 4
            picture: 'images/screenshots/jeu_d_influences.png'
            thumbnail: 'images/screenshots/jeu_d_influences.thumb.png'
            link: 'http://jeu-d-influences.'
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'MODELS.TAGS.SRS_GAME', ]
        },
        {
            id: 5
            picture: 'images/screenshots/datawrapper.png'
            thumbnail: 'images/screenshots/datawrapper.thumb.png'
            link: 'https://datawrapper.de/'
            github: 'https://github.com/datawrapper/datawrapper'
            tags: [ 'MODELS.TAGS.VIZ', ]
        },
        {
            id: 6
            picture: 'images/screenshots/tractatus-tree.png'
            thumbnail: 'images/screenshots/tractatus-tree.thumb.png'
            link: 'http://pbellon.github.io/tractatus-tree/'
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'MODELS.TAGS.VIZ', ]
        },
        {
            id: 7
            picture: 'images/screenshots/githubers-audience.png'
            thumbnail: 'images/screenshots/githubers-audience.thumb.png'
            link: 'https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive'
            github: 'https://github.com/pbellon/githubers-audience.py'
            tags: [ 'MODELS.TAGS.VIZ', ]
        }
    ]
