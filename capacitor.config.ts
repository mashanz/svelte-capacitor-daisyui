import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
	appId: 'com.mashanz.sveltecap',
	appName: 'SvelteCap',
	webDir: 'build',
	server: {
		androidScheme: 'https'
	},
	ios: {
		contentInset: 'always',
		preferredContentMode: 'mobile'
	}
};

export default config;
