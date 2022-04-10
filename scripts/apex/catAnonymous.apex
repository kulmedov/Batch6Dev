cat sfcat = new cat();

cat dummyCat = new cat();
dummyCat.color = 'black';
dummyCat.name = 'purr';
system.debug('Dummy Cat is = ' + dummyCat.color + ' ' + dummyCat.name);

cat falconsCat = new cat('Tom', 'White');
system.debug('falcon\'s cat - ' + falconsCat);