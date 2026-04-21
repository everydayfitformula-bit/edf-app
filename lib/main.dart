import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(EverydayFitFormulaApp());
}

class AppColors {
  static const Color background = Color(0xFF07090C);
  static const Color card = Color(0xFF11151B);
  static const Color softCard = Color(0xFF1A2028);
  static const Color accent = Color(0xFFFF6A00);
  static const Color accent2 = Color(0xFFFF8A00);
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xFF9BA3AF);
}

class Workout {
  final String title;
  final String duration;
  final String level;
  final int timerMinutes;
  final List<String> exercises;

  Workout({
    required this.title,
    required this.duration,
    required this.level,
    required this.timerMinutes,
    required this.exercises,
  });
}

class WeekPlan {
  final String title;
  final String subtitle;
  final List<Workout> workouts;

  WeekPlan({
    required this.title,
    required this.subtitle,
    required this.workouts,
  });
}

final List<Workout> workouts15 = [
  Workout(
    title: '15 Min Fat Burn',
    duration: '15 min',
    level: 'Beginner',
    timerMinutes: 15,
    exercises: [
      'Jumping Jacks – 40 sec',
      'Bodyweight Squats – 40 sec',
      'Push-ups – 30 sec',
      'Mountain Climbers – 30 sec',
      'Rest – 20 sec',
      'Repeat 3 rounds',
    ],
  ),
  Workout(
    title: '15 Min Core + Sweat',
    duration: '15 min',
    level: 'Beginner / Intermediate',
    timerMinutes: 15,
    exercises: [
      'High Knees – 30 sec',
      'Plank – 30 sec',
      'Sit-ups – 30 sec',
      'Reverse Lunges – 30 sec',
      'Rest – 30 sec',
      'Repeat 3 rounds',
    ],
  ),
];

final List<Workout> workouts20 = [
  Workout(
    title: '20 Min Full Body HIIT',
    duration: '20 min',
    level: 'Intermediate',
    timerMinutes: 20,
    exercises: [
      'Squat to Press – 40 sec',
      'Push-ups – 40 sec',
      'Alternating Lunges – 40 sec',
      'Plank Shoulder Taps – 40 sec',
      'Rest – 20 sec',
      'Repeat 4 rounds',
    ],
  ),
  Workout(
    title: '20 Min Athletic Builder',
    duration: '20 min',
    level: 'Intermediate',
    timerMinutes: 20,
    exercises: [
      'Burpees – 30 sec',
      'Squats – 40 sec',
      'Pike Push-ups – 30 sec',
      'Leg Raises – 30 sec',
      'Rest – 30 sec',
      'Repeat 4 rounds',
    ],
  ),
];

final List<Workout> workouts30 = [
  Workout(
    title: '30 Min Strength + Cardio',
    duration: '30 min',
    level: 'Intermediate',
    timerMinutes: 30,
    exercises: [
      'Warm-up – 5 min',
      'Squats – 45 sec',
      'Push-ups – 45 sec',
      'Walking Lunges – 45 sec',
      'Plank – 45 sec',
      'Mountain Climbers – 45 sec',
      'Rest – 30 sec',
      'Repeat 4 rounds',
    ],
  ),
  Workout(
    title: '30 Min Fighter Conditioning',
    duration: '30 min',
    level: 'Intermediate / Advanced',
    timerMinutes: 30,
    exercises: [
      'Shadow Boxing – 1 min',
      'Jump Squats – 40 sec',
      'Push-ups – 40 sec',
      'Bear Crawl – 40 sec',
      'Sit-outs – 40 sec',
      'Rest – 20 sec',
      'Repeat 5 rounds',
    ],
  ),
];

final List<Workout> kettlebellWorkouts = [
  Workout(
    title: '20 Min Kettlebell Basics',
    duration: '20 min',
    level: 'Beginner / Intermediate',
    timerMinutes: 20,
    exercises: [
      'Kettlebell Swings – 40 sec',
      'Goblet Squats – 40 sec',
      'One Arm Rows – 40 sec',
      'Overhead Press – 30 sec each side',
      'Rest – 30 sec',
      'Repeat 4 rounds',
    ],
  ),
  Workout(
    title: '20 Min Armor Builder Inspired',
    duration: '20 min',
    level: 'Intermediate',
    timerMinutes: 20,
    exercises: [
      '2 Cleans',
      '1 Press',
      '3 Front Squats',
      'Rest – 30 to 45 sec',
      'Repeat for 20 minutes',
    ],
  ),
  Workout(
    title: '30 Min Kettlebell Conditioning',
    duration: '30 min',
    level: 'Intermediate / Advanced',
    timerMinutes: 30,
    exercises: [
      'Swings – 20 reps',
      'Cleans – 10 reps',
      'Push Press – 8 reps each side',
      'Reverse Lunges – 8 reps each side',
      'Gorilla Rows – 10 reps',
      'Rest – 60 sec',
      'Repeat 5 rounds',
    ],
  ),
];

final List<WeekPlan> fourWeekPlan = [
  WeekPlan(
    title: 'Week 1 – Base Conditioning',
    subtitle: 'Build consistency and adapt to the workload.',
    workouts: [workouts15[0], workouts20[0], kettlebellWorkouts[0]],
  ),
  WeekPlan(
    title: 'Week 2 – Volume Build',
    subtitle: 'More work, more reps, stronger engine.',
    workouts: [workouts15[1], workouts20[1], kettlebellWorkouts[1]],
  ),
  WeekPlan(
    title: 'Week 3 – Intensity',
    subtitle: 'Longer sessions and harder pacing.',
    workouts: [workouts20[0], workouts30[0], kettlebellWorkouts[2]],
  ),
  WeekPlan(
    title: 'Week 4 – Fighter Finish',
    subtitle: 'Push hard and finish the cycle strong.',
    workouts: [workouts20[1], workouts30[1], kettlebellWorkouts[1]],
  ),
];

class EverydayFitFormulaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EDF',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.accent,
          brightness: Brightness.dark,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  Widget quickCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget screen,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => screen),
        );
      },
      child: Ink(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.white10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [AppColors.accent, AppColors.accent2],
                ),
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
            SizedBox(height: 14),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget screen,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => screen),
        );
      },
      child: Ink(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white10),
        ),
        child: Row(
          children: [
            Container(
              height: 74,
              width: 74,
              decoration: BoxDecoration(
                color: AppColors.softCard,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: AppColors.accent, size: 34),
            ),
            SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                      height: 1.35,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12),
            Icon(Icons.arrow_forward_ios, color: AppColors.accent, size: 22),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: AppColors.accent,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Programs',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                SizedBox(
                  height: 520,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?auto=format&fit=crop&w=1200&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 520,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.42),
                        Colors.black.withOpacity(0.84),
                        AppColors.background,
                      ],
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 22, 20, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 110),
                        Text(
                          'EDF',
                          style: TextStyle(
                            fontSize: 76,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            height: 0.92,
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'EVERY DAY FIT FORMULA',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.accent,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 22),
                        Text(
                          'Train hard. Stay ready.',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 122),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.accent,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 22),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => FourWeekPlanScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'START TRAINING   →',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'QUICK START',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.accent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.02,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    quickCard(
                      context: context,
                      icon: Icons.timer_outlined,
                      title: '15 MIN',
                      subtitle: 'Quick sessions',
                      screen: WorkoutListScreen(
                        screenTitle: '15 Minute Workouts',
                        workouts: workouts15,
                      ),
                    ),
                    quickCard(
                      context: context,
                      icon: Icons.fitness_center,
                      title: '20 MIN',
                      subtitle: 'Balanced training',
                      screen: WorkoutListScreen(
                        screenTitle: '20 Minute Workouts',
                        workouts: workouts20,
                      ),
                    ),
                    quickCard(
                      context: context,
                      icon: Icons.local_fire_department,
                      title: '30 MIN',
                      subtitle: 'Longer sessions',
                      screen: WorkoutListScreen(
                        screenTitle: '30 Minute Workouts',
                        workouts: workouts30,
                      ),
                    ),
                    quickCard(
                      context: context,
                      icon: Icons.sports_gymnastics,
                      title: 'KETTLEBELL',
                      subtitle: 'Complexes & power',
                      screen: WorkoutListScreen(
                        screenTitle: 'Kettlebell Workouts',
                        workouts: kettlebellWorkouts,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                sectionCard(
                  context: context,
                  icon: Icons.calendar_month,
                  title: '4 WEEK PLAN',
                  subtitle:
                      'Structured progression with conditioning, bodyweight and kettlebell work.',
                  screen: FourWeekPlanScreen(),
                ),
                SizedBox(height: 16),
                sectionCard(
                  context: context,
                  icon: Icons.sports_gymnastics, // Changed from Icons.kettlebell
                  title: 'KETTLEBELL SECTION',
                  subtitle:
                      'Complexes, strength and conditioning with kettlebells.',
                  screen: WorkoutListScreen(
                    screenTitle: 'Kettlebell Workouts',
                    workouts: kettlebellWorkouts,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkoutListScreen extends StatelessWidget {
  final String screenTitle;
  final List<Workout> workouts;

  WorkoutListScreen({
    required this.screenTitle,
    required this.workouts,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(screenTitle)),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final workout = workouts[index];
          return Container(
            margin: EdgeInsets.only(bottom: 14),
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        workout.title,
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.softCard,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        workout.duration,
                        style: TextStyle(
                          color: AppColors.accent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.softCard,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    workout.level,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WorkoutDetailScreen(workout: workout),
                        ),
                      );
                    },
                    child: Text('OPEN WORKOUT'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class WorkoutDetailScreen extends StatelessWidget {
  final Workout workout;

  WorkoutDetailScreen({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(workout.title)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.accent, AppColors.accent2],
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    workout.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${workout.duration} • ${workout.level}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accent,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WorkoutTimerScreen(workout: workout),
                    ),
                  );
                },
                icon: Icon(Icons.timer),
                label: Text('START TIMER'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Exercises',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: workout.exercises.length,
                separatorBuilder: (_, __) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.card,
                      border: Border.all(color: Colors.white10),
                    ),
                    child: Text(
                      '${index + 1}. ${workout.exercises[index]}',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutTimerScreen extends StatefulWidget {
  final Workout workout;

  WorkoutTimerScreen({required this.workout});

  @override
  State<WorkoutTimerScreen> createState() => _WorkoutTimerScreenState();
}

class _WorkoutTimerScreenState extends State<WorkoutTimerScreen> {
  Timer? _timer;
  late int _remainingSeconds;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.workout.timerMinutes * 60;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    if (_isRunning) return;

    setState(() {
      _isRunning = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        timer.cancel();
        setState(() {
          _isRunning = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Workout complete. Great job.')),
        );
      }
    });
  }

  void pauseTimer() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  void resetTimer() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
      _remainingSeconds = widget.workout.timerMinutes * 60;
    });
  }

  String formatTime(int totalSeconds) {
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout Timer')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.white10),
              ),
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [AppColors.accent, AppColors.accent2],
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                formatTime(_remainingSeconds),
                                style: TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                _isRunning ? 'In progress' : 'Ready',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    widget.workout.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: _isRunning ? null : startTimer,
                    child: Text('START'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.softCard,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: _isRunning ? pauseTimer : null,
                    child: Text('PAUSE'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.softCard,
                foregroundColor: Colors.white,
                minimumSize: Size.fromHeight(52),
              ),
              onPressed: resetTimer,
              child: Text('RESET'),
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Workout Steps',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: widget.workout.exercises.length,
                separatorBuilder: (_, __) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.card,
                      border: Border.all(color: Colors.white10),
                    ),
                    child: Text(
                      '${index + 1}. ${widget.workout.exercises[index]}',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FourWeekPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('4 Week Plan')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: fourWeekPlan.length,
        itemBuilder: (context, index) {
          final week = fourWeekPlan[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  week.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  week.subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 14),
                ...week.workouts.map(
                  (w) => Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: AppColors.softCard,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      title: Text(
                        w.title,
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        '${w.duration} • ${w.level}',
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.textSecondary,
                        size: 18,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => WorkoutDetailScreen(workout: w),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
