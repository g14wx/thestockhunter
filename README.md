
# The Stock Hunter (TSH)

## Getting started

#### Copy and rename the env.example file to env

Just run

``` bash
cp env.example env  
```  

It's a good idea to rerun the build command to update the env variable values

``` bash
dart run build_runner build --delete-conflicting-outputs;  
```  

### Get an API KEY from https://finnhub.io/

Just visit https://finnhub.io/ and get your free trial API_KEY and paste in the FINN_HUB_API_KEY

### Features

#### Github actions

Everytime you send a new update to your main branch, it will invoke a runner to build an apk

You can watch the runner status in ["Actions"](https://github.com/g14wx/thestockhunter/actions) tab

#### Husky github hooks

Every time that you try to do a commit, it will check first if the code doesn't have any warning,  
and it will reformat the code

#### Riverpod 2 as its main state management

Im using only riverpod 2 as the main state management for this app

#### Secure startup of providers

Im following good practices, trying to initialized every provider that need an await to be ready to use them

you can check out the file on [app_startup.dart](https://github.com/g14wx/thestockhunter/blob/main/lib/providers/app_startup_provider/app_startup.dart) file and [app_startup_page.dart](https://github.com/g14wx/thestockhunter/blob/main/lib/features/app_startup/presentation/pages/app_startup_page/app_startup_page.dart) file

#### FAQs
Is this project working for any platform?
- This app only works with Android by the moment!