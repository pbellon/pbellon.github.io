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
            *Do you have to job you dreamt when you were young?*, *Could you
            do a non-paid internship?*. This project is a study about the
            pereception in Europe of the world of work.

            Build with sociologues, this little application want to inform
            people of some world of work's fact around a survey.
            '''
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'Data Driven Journalism', ]
        }
        {
            id: 4
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
        }
        {
            id: 5
            title: 'Jeu d\'influences - France5'
            picture: 'images/screenshots/jeu_d_influences.png'
            thumbnail: 'images/screenshots/jeu_d_influences.thumb.png'
            link: 'http://jeu-d-'
            subtitle: 'Could you handle the crysis?'
            description: '''
            This serious game put you at the head of Habinat, a leader of construction.
            One of your employee is found dead, by suicide and you now have to handle
            the crysis in front of the media.

            <i class="fa fa-trophy"></i> Best crossmedia piece at [Liege Web Festival - 2014][LWF]
            [LWF]: http://liegewebfest.be/

            '''
            github: 'https://github.com/jplusplus/arte-world-of-work/'
            tags: [ 'Serious Game', ]
        }


    ]
