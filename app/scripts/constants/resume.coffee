angular.module('dummPortfolio.constants').constant 'constants.resume',
    skills: [
            name: 'Front End'
            order: 1
            skills: [
                { name: 'AngularJS', experience: 80 },
                { name: 'CoffeeScript', experience: 85 },
                { name: 'Bootstrap', experience: 75 },
                { name: 'Less / CSS', experience: 65 },
            ]
        ,
            order: 2
            name: 'Back End'
            skills: [
                { name: 'Django', experience: 80 },
                { name: 'Ruby On Rails', experience: 50 },
                { name: 'Express (NodeJS)', experience: 55 },
                { name: 'PHP', experience: 60 },
            ]
        ,
            order: 3
            name: 'Other'
            skills: [
                { name: 'Android SDK', experience: 60 },
                { name: 'Git / GitHub', experience: 70 },
                { name: 'Heroku & AWS', experience: 65 },
                { name: 'D3.js', experience: 40 },
            ]
    ]
    jobs: [
            title: 'Full stack developer'
            company: 'Journalism++'
            years: [2013, 2014]
            duration: '2 years'
            description: '''As a full-stack developer, I was involved in many data-driven journalism
            projects like *[Detective.io][dio]* and *[SpendingStories][spd]*. This experience made me confortable in technical specifications writing.
            It also improved by a great factor my software designing and developing skills in both Front-End and Back-End.
            [dio]: http://pbellon.github.com/#/projects/1
            [spd]: http://pbellon.github.com/#/projects/2
            '''
        ,
            company: 'MeetOnExhibitions'
            title: 'Mobile & Web developer'
            years: [2011, 2012]
            duration: '1 year'
            description: '''
            MeetOnExhibitions provides a solution for exhibition organizers to easily generate mobile
            applications for their events thanks to a RubyOnRails website. I took part as the main developer of
            the Android & BlackBerry platforms. This experience made me dive for the first time into a web MVC framework using a
            Test Driven Development approach. It also made me discover and use the powerness of Design Patterns for creating
            reliable and efficient software architectures.
            '''
        ,
            company: 'Kasual Business'
            title: 'Mobile developer'
            years: [2010]
            duration: '3 months'
            description: '''
            I joined Kasual Business mobile development team during an internship to work on a wine bottle matching
            application called *Smart Bordeaux*. I was in charge of the localization and geolocation features of this application.
            This was my first mobile development experience, it made me aware of multi-platform and multi-languages software
            engineering issues.
            '''
        ,
            company: 'SQLI'
            title: 'Web developer'
            years: [2009]
            duration: '3 months'
            description: '''
            My job was to add features to an open source ergonomic analysis tool called *ClickHeat*.
            I was charged to improve the kind of data captured on a user click and visualize them. It was my first
            professional experience. It made me discover the basis of web development using PHP and MySQL
            combined with jQuery to create dynamic websites.
            '''
    ]
    interests: [
            description: 'Music is a big part of my life. I love to create music thanks to my
            30 years old guitar and my MIDI keyboard.'
            iconClass: 'fa fa-music'
        ,
            description: '''
            Cinema. Some may say I'm a bit elitist concerning my choices. Well.. I am. Sometimes.
            '''
            iconClass: 'fa fa-film'
        ,
            description: 'Reading. A lot of Science-Fiction but also Sociology & old-school Philosphy.'
            iconClass: 'fa fa-book'
        ,
    ]
    education: [
            name: 'Lycée Pape Clément'
            years: [ 2008 ]
            location: 'Pessac'
            option: 'Engineer’s sciences'
            hasDiploma: true
            cursus: 'Baccalauréat Scientifique / A-Level'
        ,
            name: 'Supinfo'
            years: [ 2008, 2010 ]
            location: 'Bordeaux'
            hasDiploma: false
            cursus: 'Preparatory Cycle in Computer Science'
        ,
            name: 'EPSI'
            years: [ 2010, 2013 ]
            location: 'Montpellier'
            hasDiploma: true
            cursus: 'Master degree in Computer Science'
            option: 'Software Engineering'
    ]

