angular.module('dummPortfolio.config').config [
    '$translateProvider', ($translateProvider)->
        ########################################################################
        #                          ENGLISH LOCALES                             #
        ########################################################################
        I18N_EN_LOCALES =
            TEMPLATES:
                NAV:
                    HOME: 'Home'
                    PROJECTS: 'Projects'
                    CONTACT: 'Contact'
                    RESUME: 'Résumé'
                    MY_LINKEDIN_PROFILE: 'My LinkedIn profile'
                    MY_GITHUB_ACCOUNT: 'My GitHub account'
                    MY_TWITTER_ACCOUNT: 'My twitter account'
                    CHANGE_LANG: 'Voir ce site en Français'
                FOOTER:
                    DESCRIPTION: 'This portfolio has been crafted with ♥ thanks to <a href="https://angularjs.org/" rel="nofollow" target="_blank">AngularJS</a> and <a href="http://yeoman.io/" rel="nofollow" target="_blank">Yeoman</a>. Its code is available on <a href="https://github.com/pbellon/dummPortfolio" rel="nofollow" target="_blank">GitHub</a>.'
                PROJECTS:
                    LIST:
                        TITLE: 'Projects'
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
                        PROJECT_GITHUB: 'See it on Github'
                        SEE_WEBSITE: 'See {{title}} website'
                HOME:
                    META_TITLE: 'Web Engineer'
                    CONTACT_BTN: 'Hire me!'
                    TITLE: 'I\'m Pierre Bellon, I\'m a web engineer'
                    INTRO: '''I love to craft data-driven tools and websites.
                    I'm confortable with building RESTful API architectures and advanced user
                    interfaces on <a href="#!/en/projects">meaningful projects</a>.
                    '''
                CONTACT:
                    TITLE: 'Say hello!'
                    INTRO: '''
                    I'm currently looking some new projects to took part in.<br>
                    I'm particuraly interested in projects that meet one or more of the following aspects/topics.
                    '''
                    CONTACT_ME: '''
                    Let me know by  <a href='{{ email }}'>email</a> if you want me to work
                    at your side or if you have a project you want to realise.
                    '''
                    INTERESTS:
                        OSS: 'Open Source'
                        PUB: 'Of Public Interest'
                        DDJ: '@:MODELS.TAGS.DDJ'
                        VIZ: 'Data Visualization'
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
                        Its power lies in an advanced interface designed to design, collect & visualize
                        complex data like social networks data.

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

        I18N_FR_LOCALES =
            TEMPLATES:
                NAV:
                    HOME: 'Acceuil'
                    PROJECTS: 'Projets'
                    CONTACT: 'Contact'
                    RESUME: 'CV (Anglais)'
                    MY_LINKEDIN_PROFILE: 'Mon profile LinkedIn'
                    MY_GITHUB_ACCOUNT: 'Mon profile GitHub'
                    MY_TWITTER_ACCOUNT: 'Suivez moi sur Twitter'
                    CHANGE_LANG: 'See this website in English'
                FOOTER:
                    DESCRIPTION: 'Ce portfolio a été créé avec ♥ avec <a href="https://angularjs.org/" rel="nofollow" target="_blank">AngularJS</a> et <a href="http://yeoman.io/" rel="nofollow" target="_blank">Yeoman</a>. Son code est disponible sur <a href="https://github.com/pbellon/dummPortfolio" rel="nofollow" target="_blank">GitHub</a>.'
                PROJECTS:
                    LIST:
                        TITLE: 'Projets'
                        DETAILS_OF: 'Détails de {{ title }}'
                        INTRO: '''
                        En temps que développeur à <a target="_blank" rel="nofollow" href="http://jplusplus.org" title="Site web de Journalism++">Journalism++</a>
                        j'ai travaillé sur de nombreux projets de journalisme de données. J'ai pris alors conscience du rôle clé des données dans nos sociétés et
                        et du subtile équilibre pour les employer dans des contenus éditoriaux à volonté démocratique.

                        Voici une partie des projets dans lesquels j'ai eu l'honneur de participer.
                        '''
                    DETAIL:
                        GO_BACK_TO_PROJECTS: 'Retour au projets'
                        GITHUB_OF: 'Page github de'
                        PROJECT_GITHUB: 'Voir sur GitHub'
                        SEE_WEBSITE: 'Voir le site web de {{title}}'
                HOME:
                    META_TITLE: 'Ingénieur Web'
                    CONTACT_BTN: 'Embauchez moi !'
                    TITLE: 'Je m\'appelle Pierre Bellon, je suis ingénieur web'
                    INTRO: '''
                    J'aime fabriquer des outils et sites web pilotés par les donnés.
                    Je suis à l'aise avec la conception et la réalisation d'architecture
                    web RESTful et d'interfaces utilisateur avancées sur des
                    <a href="#!/fr/projects">projets à visée démocratiques</a>.
                    '''
                CONTACT:
                    TITLE: 'Contactez moi'
                    INTRO: '''
                    Je recherche actuellement à participer sur de nouveaux projets. <br>
                    Je suis particulièrement intéressé dans les projets rejoignant un
                    ou plusieurs des sujets/aspects suivants.
                    '''
                    CONTACT_ME: '''
                    Je reste joignable par <a href='{{ email }}'>courriel</a> si vous souhaitez que je travail à vos côtés ou réaliser un projet avec ma participation.
                    '''
                    INTERESTS:
                        OSS: 'Open Source'
                        PUB: 'D\'intérêt public'
                        DDJ: '@:MODELS.TAGS.DDJ'
                        VIZ: 'Visualisation de données'
            MODELS:
                TAGS:
                    DDJ: 'Journalisme de données'
                    VIZ: 'Visualisation'
                PROJECTS:
                    1:
                        TITLE: 'Detective.io'
                        SUBTITLE: 'Structurez vos enquêtes'
                        DESCRIPTION: '''
                        Detective.io est un outil dédié aux enquêtes pilotées par les données.
                        Sa puissance repose sur son interface évoluée permettant de concevoir, collecter et
                        visualiser des données complexes telle que peuvent l'être les données sociales en réseau.

                        <i class="fa fa-trophy"></i> Gagnant du prix "Best story on a single topic" des
                            [Data Journalism Awards 2014][dja] pour l'enquête [Migrants Files][tmf].

                        [dja]: http://www.globaleditorsnetwork.org/programmes/data-journalism-awards/
                        [tmf]: https://www.detective.io/detective/the-migrants-files/
                        '''
                    2:
                        TITLE: 'SpendingStories'
                        SUBTITLE: 'Donner du sens aux grands montants'
                        DESCRIPTION: '''
                        Que valent **23 milliards** de dollars étasuniens ?
                        On se doute qu'il s'agit d'un montant d'argent énorme.
                        Mais énorme *comment* ?<br/>
                        Et bien avec ce montant, vous pourriez acheter **WhatsApp** ou bien payer seulement **47%** du **budget de la défense du Royaume-Unis**.

                        Les grands montants ou grandes dépenses sont des choses abstraites
                        où l'on peut difficilement trouver du sens lorsqu'on les sépare
                        de leur contexte. *SpendingStories* a pour but de redonner du sens
                        à tous ces grand nombres en les comparant avec des données publiques
                        comme celle des dépenses étatiques par exemple.
                        '''
                    3:
                        TITLE: 'Arte: World of Work'
                        SUBTITLE: 'Une étude du monde du travail'
                        DESCRIPTION: '''
                        Construite autour d'un sondage ludique, cette application a pour
                        but de donner aux jeunes européens des outils pour enrichir leur
                        perception du monde du travail et de situer leur opinions par rapport
                        aux autres membres de la génération Y.
                        '''
                    4:
                        TITLE: 'Jeu d\'influences - France5'
                        SUBTITLE: 'La gestion de crise dont vous êtes le "héros"'
                        DESCRIPTION: '''
                        Ce serious game vous place à la tête de Habinat, une entreprise pionnère de la construction
                        de maisons écologiques. Votre carrière est un sans-fautes reconnue des autres. Jusqu'à cette nuit
                        où le corps sans vie de votre bras droit et ingénieur principal est retrouvé après son suicide.

                        À partir de ce moment vous devez faire face à la tempête médiatiquement qui gronde.
                        Dans cette tache vous serez aidés par Patrick Luaud, un conseiller en communication,
                        un "spin doctor".<br/>
                        Prendez-vous les *bonnes* décisions ?

                        <i class="fa fa-trophy"></i> "Meilleure oeuvre transmédia" du [Liege Web Festival - 2014][LWF]
                        [LWF]: http://liegewebfest.be/
                        '''
                    5:
                        TITLE: 'Datawrapper'
                        SUBTITLE: 'Les visualisations de données à portée de main'
                        DESCRIPTION: '''
                        DataWrapper est un outil permettant de créer simplement des visualisation de données
                        à partir de données tabulaires (excel, CSV).

                        À partir d'un simple copier-coller depuis
                        votre tableur vous pourrez créer des visualisations *efficaces* et *justes* afin
                        de pouvoir les insérer sur votre site web/vos articles.
                        '''
                    6:
                        TITLE: 'Tractatus Tree'
                        SUBTITLE: 'Visualisation de données phiolosophiques'
                        DESCRIPTION: '''
                        Ce projet est une expérimentation personnelle sur la façon dont
                        nous pouvons utiliser des outils pilotés par les données comme [D3.js][d3]
                        afin d'explorer des oeuvre philosophiques telle que le Tractatus Logico Philosophicus
                        (Logisch-Philosophische Abhandlung de son titre original).

                        Ce livre publié en 1921 est écrit par Ludwig Wittgenstein, philosophe logicien du 20ème siècle.
                        Ses propositions numérotées suivent une structure en arbre (1, puis 1.1, 1.2 etc.)
                        ce qui me fit penser que celles-ci pouvaient facilement être visualisées.

                        [d3]: http://d3js.org/
                        '''
                    7:
                        TITLE: 'githubers-audience.py'
                        SUBTITLE: 'L\'audience de votre profil GitHub'
                        DESCRIPTION: '''
                        Ce projet est un script Python que j'ai créé durant l'écriture
                        de mon mémoire intitulé *Est-il pertinent pour une entreprise à but
                        journalistique de mener un projet open-source ?*.
                        Son principe est de naviguer sur l'ensemble des projets d'un ou plusieurs
                        utilisateurs de GitHub pour analyser l'audience globale de leurs projets
                        au sein de la communauté des développeur.

                        [chart]: https://docs.google.com/spreadsheets/d/1gdxK9hJG9go52RKZxplKyi1aAlKrxKqVFU6w8yXZx5s/pubchart?oid=42127376&format=interactive
                        '''

        $translateProvider.translations('en', I18N_EN_LOCALES)
        $translateProvider.translations('fr', I18N_FR_LOCALES)

        $translateProvider.preferredLanguage 'en'



]
