# Football Availability Scheduler - Claude Context

## Project Overview
A single-page HTML application for managing football team match scheduling and player availability tracking. The app allows team managers to schedule matches and players to mark their availability for upcoming games.

## Key Features
- **Google Authentication**: Secure sign-in with Google accounts
- **Match Scheduling**: Admins can create new matches with date, time, location, and notes
- **Availability Tracking**: Players can mark themselves as available for matches
- **Admin Player Management**: Admins can remove players from match availability lists
- **Role-based Access**: Admin privileges based on email whitelist
- **Google Calendar Integration**: Generate calendar links for scheduled matches
- **Local Storage**: Data persists in browser localStorage
- **Responsive Design**: Mobile-friendly interface

## Technical Stack
- **Frontend**: Vanilla HTML, CSS, JavaScript
- **Storage**: Browser localStorage
- **No backend dependencies**

## File Structure
```
football-availability-scheduler/
├── index.html                      # Main application file
├── CLAUDE.md                       # This context file
└── README.md                       # Project documentation
```

## Key Components

### HTML Structure
- Tab-based interface with "Schedule Matches" and "Mark Availability" tabs
- Form for creating new matches
- Event cards displaying match details and availability

### JavaScript Functionality
- Google OAuth 2.0 authentication
- Event management (add, delete, render)
- Availability tracking per event (add/remove players)
- Admin-only player removal from matches
- Role-based UI updates (admin vs player)
- Google Calendar link generation
- Local storage persistence
- Tab switching functionality

### CSS Styling
- Modern gradient design with glassmorphism effects
- Responsive grid layouts
- Interactive hover effects
- Mobile-optimized breakpoints

## Data Structure

### Events
Events are stored as objects with:
- `id`: Unique timestamp
- `title`: Match title
- `date`: Match date (YYYY-MM-DD)
- `time`: Match time (HH:MM)
- `location`: Venue location
- `notes`: Optional additional information
- `availability`: Array of player names who marked themselves available

### Authentication
- Google OAuth 2.0 client ID: `1059039825869-erjpp9hnpgh1sv1jrmv84e01efv0r0un.apps.googleusercontent.com`
- Admin emails whitelist: `['pearvan14@gmail.com']`
- User session stored in localStorage

## Setup Instructions

### Google OAuth Configuration
1. Go to Google Cloud Console: https://console.cloud.google.com/auth/clients/1059039825869-erjpp9hnpgh1sv1jrmv84e01efv0r0un.apps.googleusercontent.com
2. Add authorized JavaScript origins:
   - For local testing: `http://localhost:8000`
   - For production: `https://pagkrati-fc.netlify.app`
3. Add authorized redirect URIs (same as origins)

### Live Application
🚀 **Access the app**: https://pagkrati-fc.netlify.app

### Deployment
- **Platform**: Netlify
- **Auto-deploy**: Connected to GitHub repository
- **Custom domain**: pagkrati-fc.netlify.app

### Adding Admin Users
To add new admin users, update the `ADMIN_EMAILS` array in index.html:
```javascript
const ADMIN_EMAILS = [
    'pearvan14@gmail.com',
    'newemail@example.com'  // Add new admin emails here
];
```

## Development Commands
Since this is a static HTML file, no build process is required:
- For local testing: `python -m http.server 8000` then visit `http://localhost:8000`
- For production: Upload `index.html` to any web server
- No compilation, bundling, or package management needed

## Browser Compatibility
- Modern browsers with localStorage support
- Responsive design works on mobile and desktop
- Uses ES6+ JavaScript features

## Potential Enhancements
- Export functionality for match schedules
- Email notifications or reminders
- Team roster management
- Match result tracking
- Backend integration for multi-device sync
- Player statistics and performance tracking