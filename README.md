# Live London Underground Line Status - SharePoint View Formatting & Power Automate

Display on the homepage of your SharePoint intranet a live feed of London Underground line statuses using the publicly available Transport for London (TFL) API. The results are retrieved by Power Automate, then written to a SharePoint list and using SharePoint view formatting the list view is styled so it looks like a familiar TFL tube status board with correct line colours. It also reports on the Overground, Ferry, TFL Rail and Tram. The status(es) of the lines can then be clicked if there is any further information i.e. delays/suspension/closure etc. 

![Image of SharePoint List view web part on an Intranet](https://user-images.githubusercontent.com/12968962/90440646-80160400-e0cf-11ea-8cbd-9deeefea22ce.png)

![Animated GIF of the Styled SharePoint List View In Action](https://user-images.githubusercontent.com/12968962/90440536-4cd37500-e0cf-11ea-8d65-7a76f7a8db17.gif)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Technologies Used

* SharePoint 
  * List (used to store the latest TFL line status data)
    * View Formatting (JSON used to style the list into the familiar TFL Status board)
* Power Automate (used for creating the Tube Status SharePoint list using SharePoint REST API and then on a scheduled basis retrieve the latest TFL tube statuses)

### Prerequisites

* You must be able to licenced and able to create Power Automate flows
* You must have a valid SharePoint Online license and permission to create lists.
* You must have a modern SharePoint site where you can store the data for the app.
* Download the assets from GitHub (https://github.com/Leon-Armston/LondonUnderground)

## How To Install The Solution

I have attempted to simplify/automate the deployment of the solution as much as possible. I have combined this into two flow templates which with a few very minor changes do all the work for you to deploy and configure this solution!
```
No need to create the list manually, run any PowerShell to execute any commands apply a PnP Template or Site Design etc.
```
Follow my blog post for detailed installation instructions:
(https://www.leonarmston.com/2020/08/live-london-underground-line-status---sharepoint-view-formatting--power-automate)

Please leave comments, questions or feedback on the blog post. I hope you find this helpful and it helps your organisation.

### Connect with me:
* [Twitter](https://twitter.com/LeonArmston)
* [LinkedIn](https://linkedin.com/in/leon-armston)
* [Blog](https://www.leonarmston.com)

## License

This project is licensed under Open Source - I hope it can help you! All I ask is please keep me posted with any updates you may make.

\#SharingIsCaring


