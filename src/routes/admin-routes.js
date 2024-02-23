import express from 'express';
import passport from 'passport';
import { insertGame } from '../lib/db.js';

export const adminRouter = express.Router();

async function indexRoute(req, res) {
  return res.render('login', {
    title: 'Innskráning',
  });
}

async function adminRoute(req, res) {
  const user = req.user ?? null;
  const loggedIn = req.isAuthenticated();

  return res.render('admin', {
    title: 'Admin upplýsingar, mjög leynilegt',
    user,
    loggedIn,
  });
}

// TODO færa á betri stað
// Hjálpar middleware sem athugar hvort notandi sé innskráður og hleypir okkur
// þá áfram, annars sendir á /login
function ensureLoggedIn(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }

  return res.redirect('/login');
}

// eslint-disable-next-line no-unused-vars
function skraRoute(req, res, next) {
  return res.render('skra', {
    title: 'Skrá leik',
  });
}

// eslint-disable-next-line no-unused-vars
function skraRouteInsert(req, res, next) {
  // TODO mjög hrátt allt saman, vantar validation!
  // eslint-disable-next-line camelcase
  const { home_name, home_score, away_name, away_score } = req.body;

  // eslint-disable-next-line no-unused-vars
  const result = insertGame(home_name, home_score, away_name, away_score);

  res.redirect('/leikir');
}

adminRouter.get('/login', indexRoute);
adminRouter.get('/admin', ensureLoggedIn, adminRoute);
adminRouter.get('/skra', skraRoute);
adminRouter.post('/skra', skraRouteInsert);

adminRouter.post(
  '/login',

  // Þetta notar strat að ofan til að skrá notanda inn
  passport.authenticate('local', {
    failureMessage: 'Notandanafn eða lykilorð vitlaust.',
    failureRedirect: '/login',
  }),

  // Ef við komumst hingað var notandi skráður inn, senda á /admin
  (req, res) => {
    res.redirect('/admin');
  },
);
