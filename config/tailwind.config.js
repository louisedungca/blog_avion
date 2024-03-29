const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['"Lato"', ...defaultTheme.fontFamily.sans],
        serif: ['"Merriweather"', ...defaultTheme.fontFamily.serif],
      },
      fontSize: {
        fSize__xl: "clamp(2.5rem, 1.2389rem + 6.7257vw, 12rem)",
        fSize__lg: "clamp(0.75rem, 0.6903rem + 0.3186vw, 1.2rem)",
        fSize__sm: "clamp(0.7rem, 0.6735rem + 0.1416vw, 0.9rem)",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
