# ⚽ Pagkrati FC Team Availability

A simple, elegant web application for managing football team match scheduling and tracking player availability. Perfect for local teams, recreational leagues, or any group that needs to coordinate match attendance.

🚀 **Live App**: https://pagkrati-fc.netlify.app

## 🚀 Features

- **🔐 Google Authentication**: Secure sign-in with Google accounts
- **📅 Match Scheduling**: Admins can easily create and manage upcoming matches
- **✋ Availability Tracking**: Players can mark themselves as available for matches
- **👑 Admin Player Management**: Admins can remove players from match availability lists
- **🛡️ Role-based Access**: Admin privileges based on email whitelist
- **📱 Responsive Design**: Works seamlessly on desktop and mobile devices
- **🔗 Google Calendar Integration**: One-click calendar event creation
- **💾 Local Storage**: No server required - data saves in your browser
- **🎨 Modern UI**: Clean, intuitive interface with smooth animations

## 🎯 Quick Start

1. **Visit the App**: Go to https://pagkrati-fc.netlify.app
2. **Sign In**: Click "Sign in with Google" (admins get scheduling privileges)
3. **Schedule Matches**: Admins can create and manage matches
4. **Mark Availability**: Players can mark themselves available for upcoming matches
5. **Share**: Send the URL to your team members

### For Development
1. **Clone Repository**: `git clone https://github.com/parvanitis15/football-availability.git`
2. **Local Testing**: Use `python -m http.server 8000` then visit `http://localhost:8000`
3. **Deploy**: Push to main branch for automatic Netlify deployment

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
   - See how many players have confirmed availability
   - Review the list of available players
   - Generate Google Calendar links for easy sharing

### For Players

1. **Optional Sign In**:
   - Players can optionally sign in with Google for a personalized experience
   - No sign-in required to mark availability

2. **Mark Availability**:
   - Use the "Mark Availability" tab (available to all users)
   - Enter your name for matches you can attend
   - View other confirmed players

3. **Add to Calendar**:
   - Click "Add to Google Calendar" to save match details
   - Set reminders and share with family/friends

## 🛠️ Technical Details

- **Technology**: Pure HTML, CSS, and JavaScript with Google OAuth 2.0
- **Authentication**: Google Sign-In API for secure user authentication
- **Storage**: Uses browser localStorage for data persistence
- **Compatibility**: Works in all modern web browsers
- **File Size**: Single lightweight HTML file (~20KB)
- **Dependencies**: Google Sign-In JavaScript library

## 📱 Mobile Support

The application is fully responsive and optimized for mobile devices:
- Touch-friendly interface elements
- Optimized layouts for small screens
- Easy text input on mobile keyboards

## ⚙️ Configuration

### Google OAuth Setup
1. **Go to Google Cloud Console**: https://console.cloud.google.com/auth/clients/1059039825869-erjpp9hnpgh1sv1jrmv84e01efv0r0un.apps.googleusercontent.com
2. **Authorized JavaScript Origins**:
   - Production: `https://pagkrati-fc.netlify.app`
   - Local testing: `http://localhost:8000`
3. **Add Authorized Redirect URIs** (same as origins)

### Adding Admin Users
Edit the `ADMIN_EMAILS` array in `index.html`:
```javascript
const ADMIN_EMAILS = [
    'pearvan14@gmail.com',
    'newemail@example.com'  // Add new admin emails here
];
```

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

**Getting Started**: Visit https://pagkrati-fc.netlify.app and start scheduling your team's matches! ⚽