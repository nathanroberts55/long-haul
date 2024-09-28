/** @type {import('tailwindcss').Config} */
module.exports = {
	content: [
		'./_includes/**/*.html',
		'./_layouts/**/*.html',
		'./_posts/*.md',
		'./*.html',
	],
	plugins: [require('@tailwindcss/typography'), require('daisyui')],
	daisyui: {
		logs: false, // Shows info about daisyUI version and used config in the console when building your CSS
	},
};
