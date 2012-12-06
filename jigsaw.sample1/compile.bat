:: Add Java 8 to PATH
set PATH=c:\Apps\Java\jigsaw-8-b42-windows-amd64-27_Jun_2012\jdk-module-image\bin\;%PATH%

:: Windows is not scripting friendly :)
find src -name *.java > temp.txt
set /p JAVA_FILES=<temp.txt
del temp.txt

mkdir modules
:: Compile modules
javac -d modules -modulepath modules -sourcepath src %JAVA_FILES%

:: Create a jmod file
jpkg -m modules/org.astro jmod org.astro
jpkg -m modules/com.greetings jmod com.greetings
jpkg -m modules/com.anotherconsumer jmod com.anotherconsumer


:: Create module library
jmod -L my_module_library create

:: Install modules into module library
jmod -L my_module_library install org.astro@1.2.jmod
jmod -L my_module_library install com.greetings@0.1.jmod
jmod -L my_module_library install com.anotherconsumer@1.0.jmod


:: Run com.greetings module from my_module_library
java -L my_module_library -m com.greetings

:: Run view com.greetings.alternative from my_module_library
java -L my_module_library -m com.greetings.alternative

:: Run com.anotherconsumer module from my_module_library
java -L my_module_library -m com.anotherconsumer




