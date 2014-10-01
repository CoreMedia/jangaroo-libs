//Script that loads the exjs locale file based on the jangaroo locale setting (if available)
if (joo.ResourceBundleAwareClassLoader
    && joo.ResourceBundleAwareClassLoader.INSTANCE
    && joo.ResourceBundleAwareClassLoader.INSTANCE.getLocale()) {
  joo.loadScript('public/com/sencha/ext-js/${extjs.version}/src/locale/ext-lang-' + joo.ResourceBundleAwareClassLoader.INSTANCE.getLocale() + '.js');
}
