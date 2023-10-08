# LeagueTeamsClean

This project aims to design an application based on the open-access SportDB API.

![Simulator Screen Recording - iPhone 15 Pro - 2023-10-09 at 00 22 18](https://github.com/appiwedia/LeagueTeamsClean/assets/4882168/4f0baa48-1ed4-4909-a22e-aad665ab0a80)

## Project Description

The application is designed following the MVVM pattern and is developed in the Swift language for iOS.

### Features

1. **League Search**: Users can search for a league using a search field. This field provides auto-completion based on the list of leagues available through API 1.
2. **League Selection**: After searching, the user can select the league they wish to display.
3. **API Call**: Following the user's choice, a call is made to API 2 to retrieve the details.
4. **Response Processing**: The API's response is then processed.
5. **Displaying the Teams**: The list of championship teams is displayed, sorted in reverse alphabetical order. Only every second team is displayed.

## API Documentation

You can find the complete API documentation on [TheSportsDB API](https://www.thesportsdb.com/api.php).

- **API 1**: To retrieve the list of available leagues, use [this link](https://www.thesportsdb.com/api/v1/json/50130162/all_leagues.php).
  
- **API 2**: To build the list of teams from a league (for instance, the French Ligue 1), use [this link](https://www.thesportsdb.com/api/v1/json/50130162/search_all_teams.php?l=French%20Ligue%201).
