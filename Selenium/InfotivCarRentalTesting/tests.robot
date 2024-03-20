*** Settings ***
Documentation    A testsuite for the Lab 2, testing the Infotiv Car Rental services webpage.
Library    SeleniumLibrary
Library    OperatingSystem
Resource    Resources.robot

*** Test Cases ***
Infotiv car rental services added name
    [Documentation]    Testing the navigational flow of booking a car
    [Tags]    [Req 1][Req 2][Req 3][Req 4]
    ${date1} =    Set Variable    03-28
    ${date2} =     Set Variable    03-28
    
    Open webpage
    Log into account    ${user1}    ${passw1}
    Select trip-dates    ${date1}    ${date2}
    Choose car and press book
    Confirm booking
    Check booking details
    Log out and exit browser

Cancel a booking
    [Documentation]     Removing a booked car from 'My page'
    [Tags]    [Req 2][Req 3][Req 4]
    Open webpage
    Log into account    ${user1}    ${passw1}
    Cancel a car
    Log out and exit browser

Wrong start-date input
    [Documentation]    Giving the wrong input to booking start-date
    [Tags]    [Req 4][Req 5]
    ${date1}=    Set Variable    03-13
    ${date2}=    Set Variable    03-28
    Open webpage
    Log into account    ${user1}    ${passw1}
    Select trip-dates    ${date1}    ${date2}
    Log out and exit browser


Wrong end-date input
    [Documentation]    Giving the wrong input to booking end-date
    [Tags]    [Req 4][Req 5]
    ${date1}=    Set Variable    03-28
    ${date2}=    Set Variable    05-28
    Open webpage
    Log into account    ${user1}    ${passw1}
    Select trip-dates    ${date1}    ${date2}
    Log out and exit browser


Booking car using Gherkin-syntax
    [Documentation]    Full flow of booking a car using the Gherkin-syntax
    [Tags]    [VG_test][Req 7]
    Given User is logged in to car booking page
    When User selects booking dates and car-model
    And User inputs its credit card information
    Then Selected car is booked
    And User logs out

Cancel a booking again
    [Documentation]     Removing a booked car from 'My page'
    [Tags]    [Req 2][Req 3][Req 4]
    Open webpage
    Log into account    ${user1}    ${passw1}
    Cancel a car
    Log out and exit browser
