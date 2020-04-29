# Bitcoin Exchange Calculator

This application calculates the Nigerian Naira (NGN) equivalence of the current bitcoin price in United States Dollar (USD). This is calculated using 3 (three) parameters:

- `Type`: This specifies the transaction type which is either `buy` or `sell`, nothing else.

- `Margin`: This is a percentage that is used in the calculation. Not a fraction, a percentage. For example, if `0.2` is passed into this argument, then the calculation is done with 0.2%.

- `Exchange rate`: This is a custom USD/NGN exchange rate that will be used in the calculation.

Correct source --------------> <img width="1440" alt="Authors Haven Homepage" src="./app/assets/images/homepage.png">

# Table of Contents

- [Getting Started](#Getting-Started "Goto Getting-Started")
- [Link to the deplyed application](#Link-to-the-deplyed-application "Goto Link-to-the-deplyed-application")
- [Questions](#Questions "Goto Questions")
- [Support or Contributions](#Support-or-Contributions "Support-or-Contributions")
- [Appreciation](#Appreciation "Goto Appreciation")

## Background

Bitcoin Exchange Calculator consumes [CoinDesk's](https://www.coindesk.com/coindesk-api) API. CoinDesk provides a simple API to make its Bitcoin Price Index (BPI) data programmatically available to all. CoinDesk data is made available through a number of HTTP resources, and data is returned in JSON format.

Bitcoin Exchange Calculator:

1. On the homepage, displays...

2. Offers a GraphQL API with one query. The query `calculatePrice` accepts three required arguments: `type`, `margin`, and `exchangeRate` with with the calculation is done. The link to the GraphiQL interface where the query can be performed is on the homepage.

## Getting Started

#### Prerequisites

This template was tested with Ruby **2.4.1** and Ruby on Rails **5.2.4**.

#### Database setup

The database used for this application is [PostgreSQL](https://www.postgresql.org/). Ensure it is installed on your machine.

1. Create a `.env` file in the root directory

2. Provide db credentials in the `.env` file for the following keys:

- POSTGRES_USER=
- POSTGRES_HOST=
- POSTGRES_PASSWORD=

3. Run the command:

`rails db:create`

#### How to test

1. Clone this repo - `git clone https://github.com/ODINAKACHUKWU/bitcoin-exchange-calculator.git`

2. Switch into the newly-cloned directory `cd bitcoin-exchange-calculator`

3. Run `bundle install` to install all the necessary gems

4. Start the server using the command `rails s`

5. Visit the site on your browser using `localhost:3000`

## Link to the deployed application

Add link ------------->

## Questions

For more details contact `solomonzbk@gmail.com`

## Support or Contributions

Support or Contributions are highly appreciated. Please send me an email for any suggestion, support or issue. To contribute:

1. Fork this repository or clone the repository with the command:
   `$ git clone https://github.com/ODINAKACHUKWU/bitcoin-exchange-calculator`.

2. Change directory into the root of the project directory.

3. Create your feature branch and make your contributions to your local copy of the project.

4. Raise a pull request against the master branch describing what your feature does and how it can be tested.

## Appreciation

I thank [CoinDesk](https://www.coindesk.com/price/bitcoin) for making this API freely available to others.
