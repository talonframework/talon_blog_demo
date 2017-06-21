exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: {
        'js/app.js': /^(js)|(node_modules)/,
        'js/talon/admin_lte/jquery-2.2.3.min.js': 'vendor/talon/admin-lte/plugins/jQuery/jquery-2.2.3.min.js',
        'js/talon/admin_lte/bootstrap.min.js': 'vendor/talon/admin-lte/bootstrap/js/bootstrap.min.js',
        'js/talon/admin_lte/app.min.js': 'vendor/talon/admin-lte/dist/js/app.min.js',
        'js/talon/admin_lte/sweetalert.min.js': 'vendor/talon/admin-lte/plugins/sweetalert/dist/sweetalert.min.js'
      }
    },
    stylesheets: {
      joinTo: {
        'css/app.css': /^(css)/,
        'css/talon/admin_lte/talon.css': [
          'css/talon/admin-lte/talon.css',
          'vendor/talon/admin-lte/dist/css/skins/all-skins.css',
          'vendor/talon/admin-lte/bootstrap/css/bootstrap.min.css',
          'vendor/talon/admin-lte/dist/css/AdminLTE.min.css',
          'vendor/talon/admin-lte/plugins/sweetalert/dist/sweetalert.css'
        ]
      }
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/assets/static". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: /^(static)/
  },

  // Phoenix paths configuration
  paths: {
    // Dependencies and current project directories to watch
    watched: ["static", "css", "js", "vendor"],
    // Where to compile files to
    public: "../priv/static"
  },

  // Configure your plugins
  plugins: {
    babel: {
      // Do not use ES6 compiler in vendor code
      ignore: [/vendor/]
    }
  },

  modules: {
    autoRequire: {
      "js/app.js": ["js/app", "js/talon/admin-lte/talon"]
    }
  },

  npm: {
    enabled: true
  }
};
