#include <dlfcn.h>

%hook AccessibilitySettingsController
- (BOOL)_canShowPointerControlSettings {
	return YES;
}
%end

%ctor {
	dlopen("/System/Library/PreferenceBundles/AccessibilitySettings.bundle/AccessibilitySettings", RTLD_NOW);
	%init;
}