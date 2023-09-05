import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.mashanz.sveltecap',
  appName: 'SvelteCap',
  webDir: 'dist',
  server: {
    androidScheme: 'https'
  }
};

export default config;
