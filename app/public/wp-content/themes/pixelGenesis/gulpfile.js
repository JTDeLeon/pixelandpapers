const { watch, series, gulp, src, dest } = require('gulp');
const sass = require('gulp-sass');
const imagemin = require('gulp-imagemin');
const changed = require('gulp-changed');
const cache = require('gulp-cache');
const cleancss = require('gulp-clean-css');
const uglifycss = require('gulp-uglifycss');
const rename = require('gulp-rename');
const concat = require('gulp-concat');
const babel = require('gulp-babel');
const uglifyjs = require('gulp-uglifyjs');


sass.compiler = require('node-sass');

var config = {
    jsinclude : []
}

function clean(cb) {
    // body omitted
    cb();
}

function javascript(cb) {
    //Concat
    config.jsinclude.unshift('content/js/*.js');
    src(config.jsinclude)
    .pipe(concat('content/build/js/scripts.all.js'))  // combine all js
    .pipe(dest('.'));

    cb();
}

function jsmin(cb){ 
    //Minify
    src('content/build/js/scripts.all.js')
    .pipe(rename('content/build/js/scripts.min.js'))
    .pipe(babel({
        presets: ['@babel/env']
    }))
    .pipe(uglifyjs({// compress the js
        compress: false,
        mangle: true
    }))
    .pipe(dest('.'));
    cb();
}

function images(cb) {
    src('content/images/*.+(png|gif|jpg|svg)')
    // .pipe(changed('content/image-min/'))
    .pipe(cache(imagemin({
        optimizationLevel: 9,
        progressive: true
    })))
    .pipe(dest('content/build/image-min/'));
    cb();
}

function styles(cb) {
    src('./content/sass/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(dest('./content/build/css'));
    cb();
}

function styleMin(cb) {
    src('./content/build/css/style.css')
    .pipe(cleancss())  // remove whitespace, etc
    .pipe(rename('style.min.css'))
    .pipe(uglifycss({
        'uglyComments': true
    }))
    .pipe(dest('./content/build/css'));
    cb();
}

exports.watch = function() {
// You can use a single task
watch('src/*.sass', styles);
// Or a composed task
// watch('src/*.js', series(clean, javascript));
};

exports.default = series(clean, styles, javascript, styleMin, jsmin);