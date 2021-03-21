module.exports = {
  purge: {
    enabled: process.env.NODE_ENV === 'production' ? true : false,
    content: [
      './app/views/**/*.erb',
      './app/javascript/app.vue',
      './app/javascript/packs.vue',
      './app/javascript/**/*.vue',
      './app/javascript/*.vue'
    ]
  },
  darkMode: 'class',
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
