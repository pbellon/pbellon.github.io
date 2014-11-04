angular.module('dummPortfolio.config').config [
    '$translateProvider', ($translateProvider)->
        $translateProvider.translations('en',
            TEMPLATES:
                NAV:
                    HOME: 'Home'
                    PROJECTS: 'Projects'
                    CONTACT: 'Contact'
                    RESUME: 'Résumé'
                    MY_LINKEDIN_PROFILE: 'My LinkedIn profile'
                    MY_GITHUB_ACCOUNT: 'My GitHub account'
                    MY_TWITTER_ACCOUNT: 'My twitter account'
                FOOTER: 'This portfolio has been crafted with ♥ thanks to <a href="https://angularjs.org/" rel="nofollow" target="_blank">AngularJS</a> and <a href="http://yeoman.io/" rel="nofollow" target="_blank">Yeoman</a>. Its code is available on <a href="https://github.com/pbellon/dummPortfolio" rel="nofollow" target="_blank">GitHub</a>.'
                PROJECTS:
                    LIST:
                        DETAILS_OF: 'More details about {{ title }}'
                        INTRO: '''
                        As a developer at <a target="_blank" rel="nofollow" href="http://jplusplus.org" title="Journalism++ website">Journalism++</a> I worked
                        on many data-driven journalism projects. It made me realise the key role
                        of data in our world and the importance of using it to tell engaging
                        stories.

                        Here are some projects I proudly took part in.
                        '''
                    DETAIL:
                        GO_BACK_TO_PROJECTS: 'Go back to projects'
                        GITHUB_OF: 'Github homepage of'
                        PROJECT_GITHUB: 'Project\'s Github'
                        SEE_WEBSITE: 'See {{title}} website'
            MODELS:
                TAGS:
                    DDJ: 'Data Driven Journalism'
                    VIZ: 'Visualization'
                    SRS_GAME: 'Serious Game'
                PROJECTS:
                    1:
                        TITLE: 'Detective.io'
                        SUBTITLE: 'Structure your investigations'
                        DESCRIPTION: '''
                        Detective.io is a tool dedicated to data-driven investigations.
                        Its power lies in data creation for users thanks
                        to an advanced interface designed to easily connect related data.

                        <i class="fa fa-trophy"></i> Winner of the "Best story on a single topic" award of [Data Journalism Awards 2014][dja] for the [Migrants Files][tmf] investigation.

                        [dja]: http://www.globaleditorsnetwork.org/programmes/data-journalism-awards/
                        [tmf]: https://www.detective.io/detective/the-migrants-files/
                        '''
                    2:
                        TITLE: 'SpendingStories'
                        SUBTITLE: 'Give meaning to big figures'
                        DESCRIPTION: '''
                        What **23 billion** US dollars worth ? That's indeed a huge amount
                        of money. But *how* huge ?<br/>
                        Well, with that you could afford yourself **WhatsApp** or **47%** of the **UK defense budget**.

                        Big spendings or figures are abstract things that have no meaning
                        when you separate them from their context. *SpendingStories* wants
                        to give meaning to big and small figures by using public spending
                        stories as a context.
                        '''
                    3:
                        TITLE: 'Arte: World of Work'
                        SUBTITLE: 'A study of the world of work'
                        DESCRIPTION: '''
                        Built around a playful survey this application wants to provide
                        tools to young Europeeans to improve their perception of the world
                        of work and to compare their opinions with the ones of their generation.

                        This project is also a socioligical study to check if fact that we
                        give between some questions are met by the answers young Europeeans
                        do. Results are now available and it gather more that 10 000
                        '''
                    4:
                        TITLE: 'Jeu d\'influences - France5'
                        SUBTITLE: 'Could you handle the crysis?'
                        DESCRIPTION: '''
                        This serious game put you at the head of Habinat, a leader of construction. Everybody see you
                        as a succesful entrepeneur, until that night, when your talented right-hand engineer and designer
                        of the company's main product is found dead, by suicide.

                        Now you have to face the mediatic storm that is coming, helped by Patrick Luaud, a famous communication
                        advisor, a "spin doctor".<br/>
                        Will you do the *right* choices ?

                        <i class="fa fa-trophy"></i> Best crossmedia piece at [Liege Web Festival - 2014][LWF]
                        [LWF]: http://liegewebfest.be/
                        '''
                    5:
                        TITLE: 'Datawrapper'
                        SUBTITLE: 'Data-visualization made easy'
                        DESCRIPTION: '''
                        DataWrapper is a tool that allow you to easily create data-visualization
                        '''
                    6:
                        TITLE: 'Tractatus Tree'
                        SUBTITLE: 'Visualizing philosphy'
                        DESCRIPTION: '''
                        This project is a personnal experimentation of how we can use a
                        data-driven tools like [D3.js][d3] to explore a Philosophy piece like
                        the Tractatus logico-philosophicus (Logisch-Philosophische Abhandlung
                        in its original name).

                        This book published in 1921 was written by Ludwig Wittgenstein.
                        Its numbered propositions follows a tree structure,(1, then 1.1, 1.2 etc.)
                        which made me think we could easily visualize it.

                        [d3]: http://d3js.org/
                        '''
                    7:
                        TITLE: 'githubers-audience.py'
                        SUBTITLE: 'What is your GitHub\'s profile audience ?'
                        DESCRIPTION: '''
                        This project is a small Python script wrote during the writing of my
                        memoire called *Is it relevant for a journalistic company to run an open-source project?*.
                        Its purpose is to navigate around every repository of one or many given githubers to
                        analyse their audience in the developer community.

                        The main goal was to show that running projects in open-source could create new ways of engaging its users and create links in
                        the developer community.

                        Side chart is available on [google spreedsheet][chart].

                        [chart]: https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive
                        '''

        )
        $translateProvider.preferredLanguage 'en'



]
