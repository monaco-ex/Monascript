/*
 * generated by Xtext 2.15.0
 */
package org.monacoex.dsl.monascript.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.monacoex.dsl.monascript.LanguageRuntimeModule
import org.monacoex.dsl.monascript.LanguageStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class LanguageIdeSetup extends LanguageStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new LanguageRuntimeModule, new LanguageIdeModule))
	}
	
}
