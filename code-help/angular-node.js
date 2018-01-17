/***
 * v1.0.0.0
 */
 
 
/**
 * Node.js
 */
 
 // install globally
npm install -g @angular/cli

// ProjectName a root folder lesz
// csinál git repot is, 1 committal
ng new ProjectName


 
 /**
  * Angular CLI
  */
  
// version
ng --version
  
// start develop
ng serve

// build the app to dist
ng build
ng build --prod
// Make sure your file paths are relative to the current directory rather than relative to the root directory. Simply run this command to change the base href element in your index.html.
ng build --prod --base-href ./

/**
 * URLs
 */
https://stackoverflow.com/questions/35518141/angular-2-passing-parameters-to-constructor-throws-di-exception