requirejs.config({
	baseUrl: 'static/js',
	paths: {
		jquery: 'lib/jquery-2.1.1.min',
		underscore: 'lib/underscore-min',
		KnotConn: 'component/connection',
		text: 'lib/text',
		tpl: 'lib/tpl',
		template: '../template'
	},
	shim: {
		jquery: {
			exports: '$'
		},
		underscore: {
			exports: '_'
		},
		KnotConn: {
			exports: 'KnotConn'
		}
	}
});
