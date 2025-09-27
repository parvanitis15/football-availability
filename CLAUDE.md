# Football Availability Scheduler - Claude Context

## Project Overview
A single-page HTML application for managing football team match scheduling and player availability tracking. The app allows team managers to schedule matches and players to mark their availability for upcoming games.

## Key Features
- **Match Scheduling**: Create new matches with date, time, location, and notes
- **Availability Tracking**: Players can mark themselves as available for matches
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
├── football_availability_app.html  # Main application file
├── CLAUDE.md                       # This context file
└── README.md                       # Project documentation
```

## Key Components

### HTML Structure
- Tab-based interface with "Schedule Matches" and "Mark Availability" tabs
- Form for creating new matches
- Event cards displaying match details and availability

### JavaScript Functionality
- Event management (add, delete, render)
- Availability tracking per event
- Google Calendar link generation
- Local storage persistence
- Tab switching functionality

### CSS Styling
- Modern gradient design with glassmorphism effects
- Responsive grid layouts
- Interactive hover effects
- Mobile-optimized breakpoints

## Data Structure
Events are stored as objects with:
- `id`: Unique timestamp
- `title`: Match title
- `date`: Match date (YYYY-MM-DD)
- `time`: Match time (HH:MM)
- `location`: Venue location
- `notes`: Optional additional information
- `availability`: Array of player names who marked themselves available

## Development Commands
Since this is a static HTML file, no build process is required:
- Open `football_availability_app.html` directly in a web browser
- For development, use a local server: `python -m http.server 8000` or similar
- No compilation, bundling, or package management needed

## Browser Compatibility
- Modern browsers with localStorage support
- Responsive design works on mobile and desktop
- Uses ES6+ JavaScript features

## Potential Enhancements
- Add player removal from availability lists
- Export functionality for match schedules
- Email notifications or reminders
- Team roster management
- Match result tracking
- Backend integration for multi-device sync