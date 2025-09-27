# ⚽ Football Team Availability Scheduler

A real-time web application for managing football team match scheduling and player availability tracking. Team members can mark their availability for upcoming matches, and admins can create and manage the match schedule.

## 🌟 Features

- **Real-time Sync** - Changes appear instantly across all devices
- **Admin Management** - Secure admin access for match creation/deletion
- **Player Availability** - Easy availability marking with duplicate prevention
- **Google Calendar Integration** - Generate calendar links for matches
- **Mobile Responsive** - Works perfectly on phones and tablets
- **Offline Backup** - localStorage fallback for reliability

## 🔐 Admin Access

The app supports multiple admin users with password-based authentication:

**Default Admin Passwords:**
- `admin123`
- `coach2024` 
- `manager456`

**Admin Capabilities:**
- Create new matches
- Delete existing matches
- Access to "Schedule Matches" tab

**Player Access:**
- Mark availability for matches
- View all scheduled matches
- Access Google Calendar links

## 🚀 Quick Deployment Options

### 1. GitHub Pages (Recommended - Free)

1. Create a new GitHub repository
2. Upload your `index.html` file 
3. Go to repository Settings → Pages
4. Select "Deploy from a branch" → main branch
5. Your app will be live at: `https://yourusername.github.io/repository-name`

### 2. Vercel (Free)

1. Go to [vercel.com](https://vercel.com)
2. Click "New Project"
3. Drag and drop your `index.html` file
4. Your app will be deployed instantly with a custom URL

### 3. Netlify (Free)

1. Go to [netlify.com](https://netlify.com)
2. Drag and drop your `index.html` file to the deploy area
3. Get an instant live URL

### 4. Firebase Hosting (Free)

1. Install Firebase CLI: `npm install -g firebase-tools`
2. Initialize: `firebase init hosting`
3. Deploy: `firebase deploy`

## 🗄️ Database Setup

The app uses Supabase for real-time data sync. You'll need to:

1. Create tables in your Supabase project:

```sql
-- Create matches table
CREATE TABLE matches (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    location TEXT NOT NULL,
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create availability table
CREATE TABLE availability (
    id BIGSERIAL PRIMARY KEY,
    match_id BIGINT REFERENCES matches(id) ON DELETE CASCADE,
    player_name TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(match_id, player_name)
);

-- Enable Row Level Security
ALTER TABLE matches ENABLE ROW LEVEL SECURITY;
ALTER TABLE availability ENABLE ROW LEVEL SECURITY;

-- Create policies to allow all operations
CREATE POLICY "Allow all operations on matches" ON matches FOR ALL USING (true);
CREATE POLICY "Allow all operations on availability" ON availability FOR ALL USING (true);

-- Enable real-time
ALTER PUBLICATION supabase_realtime ADD TABLE matches;
ALTER PUBLICATION supabase_realtime ADD TABLE availability;
```

2. Update the Supabase credentials in `index.html`:
   - Replace `SUPABASE_URL` with your project URL
   - Replace `SUPABASE_ANON_KEY` with your anon key

## 🔧 Customization

### Admin Passwords
Update the `ADMIN_PASSWORDS` array in the JavaScript section:

```javascript
const ADMIN_PASSWORDS = ['your_password1', 'your_password2', 'your_password3'];
```

### Styling
The app uses a modern gradient design. You can customize colors by updating the CSS variables in the `<style>` section.

### Team Name
Update the header title from "Football Team Availability" to your team name.

## 📱 Usage

### For Players:
1. Visit the website
2. Click "Mark Availability" tab
3. Enter your name and click "I'm Available"
4. View who else is available
5. Add matches to your Google Calendar

### For Admins:
1. Enter admin password in top-right corner
2. Click "Schedule Matches" tab (now visible)
3. Fill out match details and submit
4. Delete matches using the red delete button
5. Logout when done

## 🌐 Browser Compatibility

- Chrome/Edge (recommended)
- Firefox
- Safari
- Mobile browsers

## 🔒 Security Notes

- Admin passwords are stored in plain text (client-side only)
- For production, consider implementing proper authentication
- Supabase handles database security through Row Level Security
- HTTPS is recommended for production deployment

## 📞 Support

If you need help:
1. Check browser console for errors
2. Verify Supabase connection
3. Ensure admin passwords are correct
4. Test with multiple browsers/devices

## 📄 License

This project is open source and available under the MIT License.