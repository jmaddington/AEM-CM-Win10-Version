# Overview #
AEM component to raise alerts if Windows 10 is under a minimum (user-specified) veresion.

# Usage #
Install component by downloading or copying and pasting the contents of command.bat into a new device monitor in Datto RMM. Set up a new monitoring policy, set the minimum Windows 10 version required. Versions BELOW this will raise an alert.

There are two variables the scripts expects as inputs: 

**win10_version_udf**: UDF to set if any, defaults to none.

**win10_minimum_version**: Minimum version of Windows to check against. Any version returned less than this will raise an alert.

**NEITHER OF THESE VARIABLES ARE INCLUDED IN THE COMPONENT** It is expected that they are set at the Site or Account level. You can, however, add them to component.

# Building #
Download or fork, run repackage.bat and upload aem-component.cpt to AEM. You can also download the aem-component.cpt straight from this repository and install in your AEM instance.