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
jpkg -m modules/com.greetings jmod com.greetings
jpkg -m modules/org.astro jmod org.astro

:: Create module library
jmod -L my_module_library create

:: Install modules into module library
::jmod -L my_module install modules org.astro com.greetings
jmod -L my_module_library install com.greetings@0.1.jmod org.astro@1.2.jmod

:: Run com.greetings module from my_module_library
java -L my_module_library -m com.greetings





