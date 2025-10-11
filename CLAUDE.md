# Football Availability Scheduler - Claude Context

## Project Overview
A single-page HTML application for managing football team match scheduling and player availability tracking. The app allows team managers to schedule matches and players to mark their availability for upcoming games.

## Key Features
- **Google Authentication**: Secure sign-in with Google accounts
- **Match Scheduling**: Admins can create new matches with date, time, location, and notes
- **Availability Tracking**: Players can mark themselves as available or unavailable for matches with smart duplicate detection and status switching
- **Admin Player Management**: Admins can remove players from match availability lists
- **Email Notifications**: Optional email confirmations for signed-in players
- **Role-based Access**: Admin privileges based on email whitelist
- **Google Calendar Integration**: Generate calendar links for scheduled matches
- **Local Storage**: Data persists in browser localStorage
- **Responsive Design**: Mobile-friendly interface

## Technical Stack
- **Frontend**: Vanilla HTML, CSS, JavaScript
- **Authentication**: Google OAuth 2.0
- **Email Service**: EmailJS (optional)
- **Storage**: Browser localStorage + Supabase
- **Dependencies**: Google Sign-In API, EmailJS library

## File Structure
```
football-availability-scheduler/
├── index.html                      # Main application file
├── database-schema.sql             # Supabase database schema (for new setups)
├── migration-add-status.sql        # Migration script (for existing databases)
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
- Availability tracking per event (add/remove players) with smart status management
- Duplicate entry detection and status switching with confirmation dialogs
- Email notifications for signed-in users (EmailJS integration)
- Admin-only player removal from matches
- Role-based UI updates (admin vs player vs anonymous)
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
- `unavailable`: Array of player names who marked themselves unavailable

### Authentication
- Google OAuth 2.0 client ID: Configurable in index.html
- Admin emails whitelist: Configurable array in index.html
- User session stored in localStorage

## Setup Instructions

### Google OAuth Configuration
1. Create a Google Cloud project and OAuth 2.0 client ID
2. Add authorized JavaScript origins:
   - For local testing: `http://localhost:8000`
   - For production: Your deployment URL (must not contain paths)
3. Add authorized redirect URIs (same as origins)
4. Update `GOOGLE_CLIENT_ID` constant in index.html

### Deployment Options
- **Netlify**: Connect GitHub repository for auto-deploy
- **Vercel**: Import repository for serverless deployment
- **GitHub Pages**: Enable Pages in repository settings
- **Custom hosting**: Upload index.html to any web server

### Adding Admin Users
To add new admin users, update the `ADMIN_EMAILS` array in index.html:
```javascript
const ADMIN_EMAILS = [
    'admin@yourteam.com',
    'coach@yourteam.com'  // Add admin emails here
];
```

### Email Notifications Setup (Optional)
1. Create EmailJS account at https://www.emailjs.com/
2. Set up email service (Gmail, Outlook, etc.)
3. Create email template with variables: `{{to_name}}`, `{{match_title}}`, `{{match_date}}`, `{{match_time}}`, `{{match_location}}`, `{{available_count}}`, `{{available_players}}`
4. Update EmailJS configuration in index.html:
```javascript
const EMAILJS_PUBLIC_KEY = 'your_public_key';
const EMAILJS_SERVICE_ID = 'your_service_id';
const EMAILJS_TEMPLATE_ID = 'your_template_id';
```

### Supabase Database Setup

#### For New Setups:
1. Create a new Supabase project at https://supabase.com/
2. In your Supabase dashboard, go to SQL Editor
3. Run the complete SQL script from `database-schema.sql`
4. Update the Supabase URL and anon key in index.html

#### For Existing Databases:
1. In your Supabase dashboard, go to SQL Editor
2. Run the migration script from `migration-add-status.sql`
3. This will add the `status` column to your existing `availability` table

#### Configuration:
Update the Supabase URL and anon key in index.html:
```javascript
const SUPABASE_URL = 'your_supabase_url';
const SUPABASE_ANON_KEY = 'your_supabase_anon_key';
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

## Recent Updates

### Availability Status Management (Latest)
- **Dual Status Support**: Players can now mark themselves as either "Available" ✅ or "Unavailable" ❌
- **Smart Duplicate Detection**: 
  - Prevents duplicate entries with the same status (shows alert dialog)
  - Allows status switching between available/unavailable with confirmation
- **Visual Status Indicators**: 
  - Available players displayed in green tags
  - Unavailable players displayed in red tags
  - Separate counts and lists for each status
- **Database Schema**: Added `status` column to track both availability states
- **User Experience**: Clear confirmation dialogs for status changes

## Potential Enhancements
- Export functionality for match schedules
- Email notifications or reminders
- Team roster management
- Match result tracking
- Backend integration for multi-device sync
- Player statistics and performance tracking