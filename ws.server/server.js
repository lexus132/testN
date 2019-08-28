let io = require('socket.io')(6001);

io.on('connection', function(socket){

    console.log(`--- New connection: ${ socket.id }`);

    // socket.send('Message from server');

    // socket.emit('server-info', {
    //     'status' : 200,
    //     'message' : 'All Ok'
    // });

    // send all old user`s
    // socket.broadcast.send(`New User`);

    // join to room
    // socket.join('vip', function(err){
    //     console.log( socket.rooms );
    // });

    socket.on('message', function(data){
        socket.broadcast.send(data);
    });
});