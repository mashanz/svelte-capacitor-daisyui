import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
	appId: 'com.mashanz.sveltecap',
	appName: 'SvelteCap',
	webDir: 'build',
	server: {
		androidScheme: 'https'
	},
	ios: {
		contentInset: 'always'
	}
};

export default config;
