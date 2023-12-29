import 'package:final_project/model/GymWorkouts/workout.dart';



List<workout> WORKOUTTLIST = [
//CHEST WORKOUTS
  workout(
      id: 1,
      catId: 1,
      title: 'Barbell Flat Bench Press',
      steps: [
        'Lay back down on a bench, arch your lower back slightly, and plant your feet on the floor.',
        'Pull your shoulder blades together to enhance stability and upper back strength.',
        'Grab the bar and squeeze the hand hard to flex the arm and grip muscles maximally. ',
        'With the load unracked, think about pulling the barbell to the body to touch the sternum/base of the chest.',
        'Press the weight upwards, making sure to keep your back tight, and shoulder blades pulled together.'
      ],
      imageUrl:
          'https://i0.wp.com/www.styrkelabbet.se/wp-content/uploads/2020/03/Decline-Bench-Press.gif?resize=600%2C600&ssl=1',
      ),

workout(
    id: 2,
    catId: 1,
    title: 'Incline Bench Press',
    steps: [
      'Adjust a weight bench so it is at a 45-degree angle and set up similarly to that of the flat bench press.',
      "Unrack the loaded barbell and begin to pull the load downwards to line with the upper chest (a few inches below the clavicle).",
      'With the shoulder blades pulled together and elbows angled at about 45 degrees.',
      'Push the barbell upward.',
    ],
   
    imageUrl:
        'https://qph.cf2.quoracdn.net/main-qimg-444c5b30f882e35ac5ac6307ff7d6c35',
 
  ),

  workout(
    id: 3,
    catId: 1,
    title: 'Decline Bench Press',
    steps: [
      'Start by securing your feet into a decline bench set up and secure your upper back and hips to the bench (similar to the flat bench press). ',
      "Unrack the weight and pull the load downwards toward the sternum while keeping the shoulder blades pulled together.",
      'Press through the barbell to lock out your elbows. Be sure not to allow the elbows to flare excessively out.',
    ],
   
    imageUrl:
        'https://static.vecteezy.com/system/resources/thumbnails/008/573/020/small_2x/man-doing-decline-barbell-bench-press-flat-illustration-isolated-on-white-background-vector.jpg',
  
  ),

   workout(
    id: 4,
    catId: 1,
    title: 'Chest Flye',
    steps: [
      'Lie back on a bench (either flat, decline, or incline), with a dumbbell in each hand.',
      "With a slight bend in your elbows, lower your arms out to your sides slowly and with control.",
      'Now, reverse the motion to engage the chest. You should look like you’re hugging a tree.',
    ],
   
    imageUrl:
        'https://i0.wp.com/www.styrkelabbet.se/wp-content/uploads/2020/03/Dumbbell-Chest-Fly.gif?w=770&ssl=1',
  
  ),

    workout(
    id: 5,
    catId: 1,
    title: 'Dumbbell Bench Press',
    steps: [
      'Sit up on a flat bench and then hinge forward to pick up each dumbbell.',
      "Place each weight on a knee and get set.",
      'Lean back and then drive the dumbbells back towards you (carefully) with your knees, simultaneously pressing the weights over your chest., your arms should be extended forward, and your eyes should be looking at the floor (almost in between Child’s Pose and Downward Dog).',
      'Lower the weights, keeping your elbows tucked in at 45 degrees until your elbows break 90 degrees. ',
      'Then, drive the dumbbells back up.',
    ],
   
    imageUrl:
        'https://i0.wp.com/www.strengthlog.com/wp-content/uploads/2020/03/Dumbbell-Chest-Press.gif?resize=600%2C600&ssl=1',
  
  ),
   
   workout(
    id: 6,
    catId: 1,
    title: 'Cable Chest Flies',
    steps: [
      'Set the handles at both ends of the cable machine at the highest level.',
      "Stand in the center with a staggered stance and take hold of both handles.",
      'Lean your torso forward keeping your spine in neutral and bend your elbows slightly too.',
      'Keeping your core tight pull both handles down and across your body and squeeze the chest muscles at the end of the movement.',
    ],
   
    imageUrl:
        'https://www.motionsplan.dk/assets/images/exercises/cable-cross-1.jpg',
  ),

//  BACK WORKOUTS

  workout(
    id: 1,
    catId: 2,
    title: 'Pullup (wide grip)',
    steps: [
      'Grasp the bar with an overhand grip. Fully extend your arms and relax your shoulders to stretch your lats in the bottom position.',
      'As you pull up, visualize keeping your elbows out to your sides and pulling them down to raise yourself while contracting your lats.',
      'Pull yourself up as high as possible to fully stimulate your lats.',
      'If you can’t make it all the way up, consider enlisting the help of a spotter or use an assisted pullup machine.',  
    ],
    imageUrl:
        'https://blog.fitbit.com/wp-content/uploads/2017/09/0913_OneandDoneExercise_Blog_Pullup_Inline_Gif.gif',
  ),
  
  workout(
    id: 2,
    catId: 2,
    title: 'Bentover Barbell Row (wide grip)',
    steps: [
      'Don’t stand on a flat bench or platform to increase your range of motion; you’re more likely to round your low back at the bottom. If you do need greater range of motion, use smaller plates to allow you to clear the floor rather than trying to balance yourself on a flat bench.',
      'Using a wider-than-shoulder-width grip allows you to keep your elbows out to your sides and pull them back as high as possible for a full contraction.',
      'Keep your knees bent and remain in the bent-over position throughout. It’s easy to rise from this position when using heavy weights, but that recruits other muscle groups to assist in the move.',
    ],
   
    imageUrl:
        'https://media0.giphy.com/media/UUn6oTupFoo0T9g6jS/giphy.gif',
  ),

  workout(
    id: 3,
    catId: 2,
    title: 'Reverse-Grip Pulldown',
    steps: [
      'Take an underhand, shoulder-width grip. This allows you to pull your elbows back as far as possible, maximally stimulating the back muscles.',
      'Keep your torso upright and a slight arch in your back as you fully extend your arms at the top. Keep your chest out and flexed throughout the move; this helps concentrate more stress on the back muscles.',
      'Pull your elbows down and back as far as you can until the bar approaches your upper pecs. Squeeze your shoulder blades together at the point of peak contraction.',
    ],
   
    imageUrl:
        'https://media3.giphy.com/media/3o85xsuUuA0iV3fJWE/giphy.gif?cid=ecf05e47a7afl2wekqhj3c7v0l1dgsh6lllyakmg2yvxgsbv&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),

 workout(
    id: 4,
    catId: 2,
    title: 'Straight-Arm Lat Pulldown',
    steps: [
      'Grasp an overhead lat bar and stand far enough back from the station to keep your arms nearly straight (with just a slight bend in your elbows) throughout the movement.',
      'Pull the bar down in an arc with straight arms until it touches your upper thighs. Concentrate on feeling the movement in your lats; your arms should act only as levers.',
      'Movement should take place at only the shoulder joints.',
    ],
   
    imageUrl:
        'https://media3.giphy.com/media/WrUEswheRd1TR05wtU/giphy.gif?cid=ecf05e47kiv2wee3u5nkqxmefnkjq7rdlurd6bc1vb7iz2tg&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),

   workout(
    id: 5,
    catId: 2,
    title: 'One-Arm Dumbbell Row',
    steps: [
      'Lean forward at the waist and place your right knee and right hand on a flat bench.',
      'Keep your left foot flat on the floor and hold a dumbbell in your left hand. Let the weight hang straight down and slightly forward with your arm fully extended.',
      'Pull the dumbbell toward your hip, keeping your elbow close to your side.',
      'Keeping your back flat and abs tight, pull your elbow as high as you can. At the top, squeeze your shoulder blades together, then lower the weight along the same path.'
      'Repeat for reps, then switch arms.'
    ],
   
    imageUrl:
        'https://media1.giphy.com/media/fsbXIwhptkD0k54bmm/giphy.gif?cid=ecf05e47pa984f3ivars21k7m6h53erboeuhuc0ehioaj2bz&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),
   workout(
    id: 6,
    catId: 2,
    title: 'Close-Grip Seated Cable Roww',
    steps: [
      'Keep a slight bend in your knees to reduce pressure on them and maintain better balance.',
      'Though you might think leaning forward allows a greater range of motion, keeping your torso upright hits the middle back more while also minimizing stress on the lumbar region.',
      'Keep a slight arch in your low back at all times.',
      'Pull your shoulders and elbows back as far as possible so the bar touches your midsection.'
    ],
   
    imageUrl:
        'https://media4.giphy.com/media/WOfmOZ8FMu9soavBlE/giphy.gif?cid=ecf05e47ityi59lw0oanme4evu2eioyfmqjdr36skdjgelfs&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),
   workout(
    id: 7,
    catId: 2,
    title: 'Stiff-Legged Deadlift',
    steps: [
      'The bar comes closer to the floor in the stiff-legged version than the romanian deadlift, a range of motion that works the lower back more.',
      'As you bend at the waist, push your glutes back and allow the bar to hang freely straight down from your shoulders. Your legs should be straight.',
      'Keep your lower-back muscles contracted throughout as you resist the weight’s descent.',
      'Push your hips forward as you rise. Stand straight up without leaning backward at the top. The bar should rest across the top of your thighs.',
      'Concentrate on pulling with your back and hip muscles, not your arms, when raising your torso.',
    ],
   
    imageUrl:
        'https://i.imgur.com/uhw7lNP.gif',
  ),
  // SHOULDERS Workouts

  workout(
    id: 1,
    catId: 3,
    title: 'Barbell Overhead Press',
    steps: [
      'Hang from a pullup bar with your palms facing away from you, shoulder-width apart. Your feet should be together.',
      'Simultaneously bend your knees and your hips, and tuck your lower back underneath as you lift your thighs toward your chest.',
      'Pause when your thighs reach your chest, and then slowly lower your legs back to your starting position. Engage your core to avoid swinging in your hips and torso.',
    ],
   
    imageUrl:
        'https://media.post.rvohealth.io/wp-content/uploads/2023/08/LeadingBlushingArchaeopteryx-size_restricted.gif',
  ),
  workout(
    id: 2,
    catId: 3,
    title: 'Arnold Press',
    steps: [
      'Sit upright on a weight bench, either supported or unsupported. Hoist dumbbells up to a traditional starting position.',
      'Rotate your hands until your palms are facing toward you, like at top of a biceps curl. ',
      'In one motion, press the dumbbells and rotate your palms to face forward. Continue lifting until your biceps are by or behind your ears.',
      'Pause and reverse the move slowly — including the rotation aspects — and repeat.',
    ],
   
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/workouts/2016/03/dumbbellshoulderpress-1457041578.gif',
  ),


workout(
    id: 3,
    catId: 3,
    title: 'Push press',
    steps: [
      'Set up the same as you would for the barbell overhead press. ',
      'Assume an upright torso and dip downward four to six inches with your knees over your toes. ',
      'Push your torso and chest upwards through the barbell, and using your legs, forcefully drive yourself and the barbell up.',
      'Continue to push through the barbell until lockout. Slowly return to the starting position and repeat.'
    ],
   
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/workouts/2016/03/barbellpushpress-1457038362.gif?resize=768:*',
  ),

workout(
    id: 4,
    catId: 3,
    title: 'Wide-Grip Seated Row',
    steps: [
      'Set up like you would for your regular seated row but use a straight bar attachment. ',
      'Take a wide overhand grip until your upper arms are about 45 degrees to your torso.',
      'Keeping an upright torso, row the bar to your sternum until you feel a strong contraction in your upper back.',
      'Slowly return to the starting position and repeat.'
    ],
   
    imageUrl:
        'https://www.strengthlog.com/wp-content/uploads/2020/03/cable-row-seated-wide-grip.gif',
  ),
  workout(
    id: 5,
    catId: 3,
    title: 'Leaning Lateral Raise ',
    steps: [
      'Grasp the side of a power rack, squat rack, or incline weight bench with your free hand. Bring your feet close to or under your hands. ',
      'Hold a dumbbell in your opposite hand with the dumbbell resting on your outer thigh.',
      'Raise the dumbbell away from you until you feel a strong contraction in your shoulder.',
      'Slowly lower down and repeat.',
    ],
   
    imageUrl:
        'https://i0.wp.com/www.styrkelabbet.se/wp-content/uploads/2020/03/cable-lateral-raise.gif?resize=600%2C600&ssl=1',
  ),
  // Leg Workout

  workout(
    id: 1,
    catId: 4,
    title: 'Back Squat',
    steps: [
      'Set a barbell in a power rack to shoulder height, loaded with an appropriate amount of weight.',
      'Get under the barbell, set the bar across your upper traps, or set the bar across your shoulder blades if you’re performing low-bar back squats.',
      "Brace your core and lift the weight out of the rack. Take small steps back one foot at a time to get yourself into position.",
      "With your chest up, squat down until the bottoms of your thighs are parallel to the floor. Now, drive back up by pushing your feet through the floor.",
    ],
   
    imageUrl:
        'https://media4.giphy.com/media/Eygpnb1pXHBqkOJq0d/giphy.gif?cid=ecf05e47extge7406jgnemgn6ux4qr0o7pvnq9h8wr0hoihb&ep=v1_gifs_related&rid=giphy.gif&ct=g',
  ),

   workout(
    id: 2,
    catId: 4,
    title: ' Front Squat',
    steps: [
      'Set a barbell in a power rack to shoulder height, loaded with an appropriate weight.',
      'Extend your arms directly out in front of you so that your hands are touching the bar.',
      "Place your middle three fingers on the bar, and then drive your palms up. Bring your elbows underneath the bar so that they’re pointing straight forward.",
      "Step back, so the bar is out of the rack, and keep your elbows pointing forward.",
      'With your chest up, squat down until the bottoms of your thighs are parallel to the floor and drive through the floor with your feet to the top.',
    ],
   
    imageUrl:
        'https://media2.giphy.com/media/36rjp51wGWd56/giphy.gif?cid=ecf05e47kkavm3aes2yu2l2izt61002vlzjjqpab0nx65vty&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),

   workout(
    id: 3,
    catId: 4,
    title: 'Bulgarian Split Squat',
    steps: [
      "Hold a dumbbell in each hand and stand about a foot in front of a bench. Place one foot, shoelaces down, on a bench.",
      'Brace your core and squat down until both of your legs bend to 90 degrees.',
      "You can squat down a little further, but don’t let your knee touch the floor. Hold this down position for a beat and then drive back up."
    ],
   
    imageUrl:
        'https://media1.giphy.com/media/g0Kz180GdPYCsKqMyf/giphy.gif?cid=ecf05e47kh2c8kvswxfd0o8c8t97c1lpn8z31eigmvnlwpdm&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),
  workout(
    id: 4,
    catId: 4,
    title: 'Leg Press',
    steps: [
      "Sit in the leg press seat, and place your feet in the middle of the sled, about shoulder-width apart.",
      'Press the sled out of the rack, lower the safety bars, and then slowly lower the sled towards your chest until your thighs break 90 degrees.',
      "Press the sled back up but do not lock out your knees.",
      'If your lower back or hips lift off the seat as you drive the weight back up, you’re going too far down.',
    ],
   
    imageUrl:
        'https://www.strengthlog.com/wp-content/uploads/2020/03/leg-press.gif',
  ),
  workout(
    id: 5,
    catId: 4,
    title: 'Romanian Deadlift',
    steps: [
      "Load a barbell up with less weight than you would for a traditional deadlift, but get in the same deadlift position — feet shoulder-width apart and hands gripping the bar just outside the knees.",
      'Raise your chest up and then drop your hips and pull-up on the bar until your hips are fully locked out.',
      "Now, push your hips back and lower the bar until it’s in the middle of your shins.",
      'You should feel a stretch in your hamstrings. Finish by driving your hips forward, bringing the weight back up to the starting position.'
    ],
   
    imageUrl:
        'https://media0.giphy.com/media/xT0xenc4lKQlhf1Ohi/giphy.gif?cid=ecf05e47nuwwf2c6267vkdykr77z5fvslut1uxlv6ijrnujn&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),

  workout(
    id: 6,
    catId: 4,
    title: 'Glute Bridge',
    steps: [
      "Lie down with knees bent and feet flat on the floor about shoulder-width apart, to start. ",
      'Push your heels into the ground while raising your hips off the ground. ',
      "At the top, squeeze your glutes and keep the abdominals tight to prevent arching in the low back. "
      "Lower your hips back down. To keep time under tension, hover your glutes just above the floor rather than resting. That's 1 rep. ",
    ],
   
    imageUrl:
        'https://www.mensjournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_620/MTk2MTM3MzQ2NDgxNDY0NDY1/7-glute-bridge.webp',
  ),
//triceeps
  workout(
    id: 1,
    catId: 5,
    title: 'Parallel Bar Dip',
    steps: [
      "Grab the parallel bars with your torso upright (with a slight lean forward) as you are suspended.",
      'Have your elbows almost fully extended to support this position.',
      "With the chest up and shoulder blades squeezed together, bend at the elbows as you lower yourself downward until the elbows reach 90 degrees."
      "Press yourself upwards until you fully extend the elbows and repeat.",
    ],
   
    imageUrl:
        'https://fitnessvolt.com/wp-content/uploads/2021/05/parallel-bar-dips-1024x698.jpg',
  ),

   workout(
    id: 2,
    catId: 5,
    title: ' Triceps Pushdown',
    steps: [
      "Set the cables or band at a high anchor point. With your body facing the band, place your feet together and elbows to your sides (by your ribs). ",
      'The chest should be up, and the back flat, with the hips angled slightly forward. ',
      "Grab the handles or band and fully extend the elbows to push the handles or band down, making sure to keep the elbows slightly in front of the shoulders",
    ],
   
    imageUrl:
        'https://www.strengthlog.com/wp-content/uploads/2020/03/triceps-pushdown-with-rope.gif',
  ),

   workout(
    id: 3,
    catId: 5,
    title: 'Skull Crusher',
    steps: [
      "Start by lying back down on a bench, with the hands supporting a weight (a barbell, dumbbells, or various cable attachments) at the top of the bench pressing position. The back and hips should be set up identical to a bench press. ",
      'Pull the elbows back slightly so that they are pointing behind you (rather than directly vertical) as you bend the elbow joint, lowering the bar handle or loads towards your head.',
      "The bar should nearly make contact with the forehead. Feel the stretch on the triceps and partially on the lats. Push the bar back up.",
    ],
   
    imageUrl:
        'https://www.lifetime60day.com/wp-content/uploads/2017/11/Skull-Crusher.gif',
  ),
   workout(
    id: 4,
    catId: 5,
    title: 'Overhead Triceps Extension',
    steps: [
      "With the band underneath the middle of both feet, step forward with one foot and bring the handles of the band up behind your ears.",
      'Standing tall and keeping your elbows tucked in, extend the elbows until lockout, and pause for a second.',
      "Slowly lower down to the starting position and then repeat.",
    ],
   
    imageUrl:
        'https://media4.giphy.com/media/TFzrsU1DfnCcQDv9ny/giphy.gif?cid=ecf05e472rftlwqzq8lqb9foehg1up8jo03rqyiw3p8oye97&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),
  
  //biceps
  workout(
    id: 1,
    catId: 6,
    title: 'Barbell Curl',
    steps: [
      "Grab a barbell with an underhand grip, slightly wider than the shoulders. ",
      'Pull your shoulders back into their sockets to expose the fronts of your biceps. Your elbows should be under your shoulder joints, or slightly in front by your ribs. ',
      "Curl the barbell up using your biceps. ",
    ],
   
    imageUrl:
        'https://media0.giphy.com/media/l3q2UKzEToTKEvlK0/giphy.gif?cid=ecf05e47lgmfi1kp5sekjewnyfu774mvghqwi6co8ncmnepe&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),

  workout(
    id: 2,
    catId: 6,
    title: 'Barbell Curl',
    steps: [
      "Grab the shaft of the bar in each hand with your palms facing down (or best fit to the slanted part on the bar). ",
      'Keep your arms tucked in at your sides.',
      "Flex at your elbows to curl the bar up towards your shoulders. Lower the bar back down with control.",
    ],
   
    imageUrl:
        'https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/assets/reversecurlgif.gif?resize=480:*',
  ),
   workout(
    id: 3,
    catId: 6,
    title: 'Dumbell Curl',
    steps: [
      "Stand upright holding a dumbbell in each hand at your sides, palms facing each other.",
      'Curl one or both arms up; as you bend your elbow, rotate your wrist around so your palm faces the ceiling.',
      "Reverse the motion and lower the weights back down to their original position.",
    ],
   
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/workouts/2016/03/dumbbellcurl-1457043876.gif?resize=640:*',
  ),

   workout(
    id: 4,
    catId: 6,
    title: 'Incline Dumbbell Curl',
    steps: [
      "Lie back on an incline bench, angled at about 60 degrees, with a dumbbell in each hand. Let your arms hang so they’re fully extended.",
      'Curl the weight up without moving your shoulders. ',
      "Hold at the top of the movement for about a second, then slowly lower the dumbbells with control.",
    ],
   
    imageUrl:
        'https://www.strengthlog.com/wp-content/uploads/2020/10/Incline-Dumbbell-Curl.gif',
  ),

   workout(
    id: 5,
    catId: 6,
    title: 'Hammer Curl',
    steps: [
      "Hold a dumbbell in each hand while standing. ",
      'Turn your wrists so that they’re facing each other. ',
      "Keep your arms tucked in at your sides and flex your elbows to curl the dumbbells up towards your shoulders. Lower them back down with control.",
    ],
   
    imageUrl:
        'https://media0.giphy.com/media/yNPVFb1t0Th0aoWxBY/giphy.gif?cid=ecf05e47hq9yhk4mw8s3why90p2uhv82t5d5y9tqttj1tufs&ep=v1_gifs_search&rid=giphy.gif&ct=g',
  ),
];
