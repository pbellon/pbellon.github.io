var deploy = require('gulp-gh-pages');
var gulp = require('gulp');

gulp.task('deploy', function () {
    return gulp.src('./dist/**/*')
        .pipe(deploy({
            origin: 'pbellon-gh',
            branch: 'master',
            remoteUrl: 'git@github.com:pbellon/pbellon.github.io.git'
        }));
});
