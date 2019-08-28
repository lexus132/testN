let io = require('socket.io')(6001),
    Redis = require('ioredis'),
    redis = new Redis();

redis.psubscribe('*', function(error,count){
    // console.log(error);
    // console.log(count);
});

redis.on('pmessage', function(pattern, channel, message){
    console.log(`--- `, channel, message );

    message = JSON.parse(message);
    io.emit( channel + ':' + message.event, message.data.message );
});