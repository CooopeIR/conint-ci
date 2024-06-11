//./plugins/posthog.js
import posthog from "posthog-js";

export default {
  install(app) {
    app.config.globalProperties.$posthog = posthog.init(
      'phc_Rq5JzzcXXzZ2IrTcQGmPUYslCznC8GgRZ2zBoPuQZlx',
      {
        api_host: 'https://eu.i.posthog.com',
      }
    );
  },
};