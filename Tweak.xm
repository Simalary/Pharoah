//
// Pharoah
//
// By Simalary
//
// Bring the iPad app switcher from iOS 11 to other devices
//

%hook SBAppSwitcherSettings

//Set the switcherStyle to 2 (Grid)
- (NSInteger)switcherStyle {
	return 2;
}
- (NSInteger)killAffordanceStyle {
	return 2;
}
- (void)setSwitcherStyle:(NSInteger)style {
	%orig(2);
}

/* All of the following code causes a respring loop.

//Force the opposite of not allowing Control Center
-(BOOL)simplicityOptionNoControlCenter{
  return FALSE;
}
-(void)setSimplicityOptionNoControlCenter:(BOOL)noAllowControlCenter{
  noAllowControlCenter = FALSE;
}

%end

%hook SBGridSwitcherPersonality

//Permit showing Control Center
-(BOOL)shouldShowControlCenter{
  return TRUE;
}*/

%end
