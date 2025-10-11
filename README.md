# ⚽ Football Team Availability Scheduler

A simple, elegant web application for managing football team match scheduling and tracking player availability. Perfect for local teams, recreational leagues, or any group that needs to coordinate match attendance.

## 🚀 Features

- **🔐 Google Authentication**: Secure sign-in with Google accounts
- **📅 Match Scheduling**: Admins can easily create and manage upcoming matches
- **✋ Availability Tracking**: Players can mark themselves as available or unavailable for matches with smart duplicate detection
- **👑 Admin Player Management**: Admins can remove players from match availability lists
- **🛡️ Role-based Access**: Admin privileges based on email whitelist
- **📱 Responsive Design**: Works seamlessly on desktop and mobile devices
- **🔗 Google Calendar Integration**: One-click calendar event creation
- **📧 Email Notifications**: Optional email confirmations for signed-in players
- **💾 Local Storage**: No server required - data saves in your browser
- **🎨 Modern UI**: Clean, intuitive interface with smooth animations

## 🎯 Quick Start

### Option 1: Use Existing Deployment
1. **Fork this repository** to your GitHub account
2. **Deploy to Netlify, Vercel, or GitHub Pages**
3. **Configure Google OAuth** with your deployment URL
4. **Add admin emails** to the whitelist in `index.html`

### Option 2: Local Development
1. **Clone Repository**: `git clone [your-fork-url]`
2. **Set up Google OAuth**: Create a Google Cloud project and OAuth client
3. **Update Configuration**: Add your client ID and admin emails to `index.html`
4. **Local Testing**: Use `python -m http.server 8000` then visit `http://localhost:8000`
5. **Deploy**: Push to your chosen hosting platform

## 📖 How to Use

### For Team Managers (Admins)

1. **Sign In**:
   - Click "Sign in with Google" and use an admin email account
   - Admin status is automatically granted based on email whitelist

2. **Schedule a Match**:
   - Access the "Schedule Matches" tab (visible only to admins)
   - Fill in match details (title, date, time, location)
   - Add any special notes or instructions
   - Click "Schedule Match"

3. **Manage Matches**:
   - Delete matches if plans change
   - Remove players from match availability lists using the × button
   - View all upcoming matches in chronological order

4. **View Availability**:
   - See separate counts for available and unavailable players
   - Review color-coded lists: available players in green, unavailable in red
   - Generate Google Calendar links for easy sharing

### For Players

1. **Optional Sign In**:
   - Players can optionally sign in with Google for a personalized experience
   - No sign-in required to mark availability

2. **Mark Availability**:
   - Use the "Mark Availability" tab (available to all users)
   - Enter your name and choose either "✅ Available" or "❌ Unavailable"
   - **Smart Status Management**: 
     - System prevents duplicate entries (alerts if already marked with same status)
     - Allows status switching with confirmation dialog
   - **Signed-in users**: Check "📧 Send me an email confirmation" for match details
   - View separate lists of available and unavailable players with color-coded tags

3. **Add to Calendar**:
   - Click "Add to Google Calendar" to save match details
   - Set reminders and share with family/friends

## 🛠️ Technical Details

- **Technology**: Pure HTML, CSS, and JavaScript with Google OAuth 2.0
- **Authentication**: Google Sign-In API for secure user authentication
- **Email Service**: EmailJS for client-side email notifications (optional)
- **Storage**: Uses browser localStorage for data persistence
- **Compatibility**: Works in all modern web browsers
- **File Size**: Single lightweight HTML file (~25KB)
- **Dependencies**: Google Sign-In and EmailJS JavaScript libraries

## 📱 Mobile Support

The application is fully responsive and optimized for mobile devices:
- Touch-friendly interface elements
- Optimized layouts for small screens
- Easy text input on mobile keyboards

## ⚙️ Configuration

### Google OAuth Setup
1. **Create a Google Cloud Project**:
   - Go to [Google Cloud Console](https://console.cloud.google.com/)
   - Create a new project or select existing one
   - Enable the Google+ API

2. **Create OAuth 2.0 Credentials**:
   - Go to "Credentials" → "Create Credentials" → "OAuth 2.0 Client ID"
   - Choose "Web application"
   - Add your deployment URL to "Authorized JavaScript origins"
   - Add the same URL to "Authorized redirect URIs"

3. **Update the Application**:
   - Replace `GOOGLE_CLIENT_ID` in `index.html` with your client ID
   - Add your domain to authorized origins (no paths allowed)

### Adding Admin Users
Edit the `ADMIN_EMAILS` array in `index.html`:
```javascript
const ADMIN_EMAILS = [
    'admin@yourteam.com',
    'coach@yourteam.com'  // Add admin emails here
];
```

### Email Notifications Setup (Optional)
1. **Create EmailJS Account**: Go to [EmailJS.com](https://www.emailjs.com/) and create a free account
2. **Set up Email Service**: Connect your email provider (Gmail, Outlook, etc.)
3. **Create Email Template**: Design a template with these variables:
   - `{{to_name}}` - Player name
   - `{{match_title}}` - Match title
   - `{{match_date}}` - Formatted date
   - `{{match_time}}` - Formatted time
   - `{{match_location}}` - Match location
   - `{{available_count}}` - Number of confirmed players
   - `{{available_players}}` - List of player names
4. **Update Configuration**: Replace EmailJS constants in `index.html`:
   ```javascript
   const EMAILJS_PUBLIC_KEY = 'your_emailjs_public_key';
   const EMAILJS_SERVICE_ID = 'your_service_id';
   const EMAILJS_TEMPLATE_ID = 'your_template_id';
   ```

### Deployment Notes
- **Netlify/Vercel**: Drag and drop the `index.html` file
- **GitHub Pages**: Push to a repository and enable Pages
- **Custom Domain**: Update OAuth origins when domain changes

## 🔧 Customization

The application can be easily customized by editing the HTML file:
- Change colors by modifying CSS gradient values
- Adjust the default match duration (currently 2 hours)
- Modify form fields to capture additional information
- Add team-specific branding or logos

## 💡 Use Cases

- **Local Football Teams**: Coordinate weekly matches and training sessions
- **Recreational Leagues**: Manage player availability across multiple teams
- **Corporate Teams**: Organize company sports events
- **Youth Sports**: Help coaches track player attendance
- **Friend Groups**: Plan casual pickup games

## 🤝 Contributing

This is a simple, self-contained project. To contribute:
1. Fork or download the HTML file
2. Make your improvements
3. Test in multiple browsers
4. Share your enhanced version

## 🆕 Recent Updates

### Availability Status Management (Latest Feature)
- **Dual Status Support**: Players can now mark themselves as either "Available" ✅ or "Unavailable" ❌
- **Smart Duplicate Detection**: 
  - Prevents duplicate entries with the same status (shows alert dialog)
  - Allows status switching between available/unavailable with confirmation
- **Enhanced Visual Design**: 
  - Available players displayed in green tags
  - Unavailable players displayed in red tags
  - Separate counts and lists for each status
- **Improved User Experience**: Clear confirmation dialogs for status changes
- **Database Enhancement**: Added status column to properly track both availability states

## 📋 Future Enhancements

Potential features for future versions:
- Export schedules to various formats
- Email/SMS notifications
- Team roster management
- Match result tracking
- Multi-team support
- Backend integration for cross-device sync
- Player statistics and performance tracking

## 📞 Support

For questions or suggestions:
- Open the HTML file in a text editor to view/modify the code
- Check browser console for any error messages
- Ensure localStorage is enabled in your browser

## 📄 License

This project is open source and available for personal and commercial use. Feel free to modify and distribute as needed.

---

**Getting Started**: Fork this repository, deploy it, and start scheduling your team's matches! ⚽