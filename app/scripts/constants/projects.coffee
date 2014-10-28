angular.module('dummPortfolio.constants').constant 'constants.projects',
    all: [
        {
            id: 1
            title: 'Detective.io'
            link: 'https://www.detective.io'
            picture: 'images/screenshots/detective-io.png'
            thumbnail: 'images/screenshots/detective-io.thumb.png'
            subtitle: 'Structure your investigations'
            description: '''
            Detective.io is a tool dedicated to data-driven investigations.
            Its power lies in data creation for users thanks
            to an advanced interface designed to easily connect related data.

            <i class="fa fa-trophy"></i> Winner of the "Best story on a single topic" award of [Data Journalism Awards 2014][dja] for the [Migrants Files][tmf] investigation.

            [dja]: http://www.globaleditorsnetwork.org/programmes/data-journalism-awards/
            [tmf]: https://www.detective.io/detective/the-migrants-files/

            '''
            tags: [ 'Data Driven Journalism']
            github: 'https://github.com/jplusplus/detective.io/'
        },
        {
            id: 2
            title: 'SpendingStories'
            picture: 'images/screenshots/spendingstories.png'
            thumbnail: 'images/screenshots/spendingstories.thumb.png'
            link: 'http://spendingstories.org'
            subtitle: 'Give meaning to big figures'
            description: '''
            What **23 billion** US dollars worth ? That's indeed a huge amount
            of money. But *how* huge ?<br/>
            Well, with that you could afford yourself **WhatsApp** or **47%** of the **UK defense budget**.

            Big spendings or figures are abstract things that have no meaning
            when you separate them from their context. *SpendingStories* wants
            to give meaning to big and small figures by using public spending
            stories as a context.
            '''

            github: 'https://github.com/okfn/spendingstories/'
            tags: ['Data Driven Journalism', 'Visualization']
        },
        {
            id: 3
            title: 'Arte: World of Work'
            picture: 'images/screenshots/arte-wow.png'
            thumbnail: 'images/screenshots/arte-wow.thumb.png'
            link: 'http://europe.arte.tv/fr/evenements/world-of-work/'
            subtitle: 'A study of the world of work'
            description: '''
            Built around a playful survey this application wants to provide
            tools to young Europeeans to improve their perception of the world
            of work and to compare their opinions with the ones of their generation.

            This project is also a socioligical study to check if fact that we
            give between some questions are met by the answers young Europeeans
            do. Results are now available and it gather more that 10 000
            '''
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'Data Driven Journalism', ]
        },
        {
            id: 4
            title: 'Jeu d\'influences - France5'
            picture: 'images/screenshots/jeu_d_influences.png'
            thumbnail: 'images/screenshots/jeu_d_influences.thumb.png'
            link: 'http://jeu-d-'
            subtitle: 'Could you handle the crysis?'
            description: '''
            This serious game put you at the head of Habinat, a leader of construction. Everybody see you
            as a succesful entrepeneur, until that night, when your talented right-hand engineer and designer
            of the company's main product is found dead, by suicide.

            Now you have to face the mediatic storm that is coming, helped by Patrick Luaud, a famous communication
            advisor, a "spin doctor".<br/>
            Will you do the *right* choices ?

            <i class="fa fa-trophy"></i> Best crossmedia piece at [Liege Web Festival - 2014][LWF]
            [LWF]: http://liegewebfest.be/

            '''
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'Serious Game', ]
        },
        {
            id: 5
            title: 'Datawrapper'
            picture: 'images/screenshots/datawrapper.png'
            thumbnail: 'images/screenshots/datawrapper.thumb.png'
            link: 'https://datawrapper.de/'
            subtitle: 'Data-visualization made easy'
            description: '''
            DataWrapper is a tool that allow you to easily create data-visualization

            '''
            github: 'https://github.com/datawrapper/datawrapper'
            tags: [ 'Visualization', ]
        },
        {
            id: 6
            title: 'Tractatus Tree'
            picture: 'images/screenshots/tractatus-tree.png'
            thumbnail: 'images/screenshots/tractatus-tree.thumb.png'
            link: 'http://pbellon.github.io/tractatus-tree/'
            subtitle: 'Visualizing philosphy'
            description: '''
            This project is a personnal experimentation of how we can use a
            data-driven tools like [D3.js][d3] to explore a Philosophy piece like
            the Tractatus logico-philosophicus (Logisch-Philosophische Abhandlung
            in its original name).

            This book published in 1921 was written by Ludwig Wittgenstein.
            Its numbered propositions follows a tree structure,(1, then 1.1, 1.2 etc.)
            which made me think we could easily visualize it.

            [d3]: http://d3js.org/
            '''
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'Visualization', ]
        },
        {
            id: 7
            title: 'githubers-audience.py'
            picture: 'images/screenshots/githubers-audience.png'
            thumbnail: 'images/screenshots/githubers-audience.thumb.png'
            link: 'http://pbellon.github.io/tractatus-tree/'
            subtitle: 'What is your GitHub\'s profile audience ?'
            description: '''
            This project is a small Python script wrote during the writing of my
            memoire called *Is it relevant for a journalistic company to run an open-source project?*.
            Its purpose is to navigate around every repository of one or many given githubers to
            analyse their audience in the developer community.

            The main goal was to show that running projects in open-source could create new ways of engaging its users and create links in
            the developer community.

            Side chart is available on [google spreedsheet][chart].

            [chart]: https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive
            '''
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'Visualization', ]
        }
    ]
