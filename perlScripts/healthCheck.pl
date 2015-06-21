use strict;
use warnings;
use LWP::UserAgent;

my $num_args = $#ARGV + 1;
if ($num_args != 3) {
    print "\nUsage: healthCheck.pl container_name type\n";
    print "type < cpu | mem >\n";
    exit;
}
 
# (2) we got two command line args, so assume they are the
# first name and last name
my $endpoint = $ARGV[0];
my $container_name=$ARGV[1];
my $type=$ARGV[2];


my $output_string = `docker stats --no-stream $container_name`;

$output_string =~ /(\d+\.\d+)%.*(\d+\.\d+)%/;

my $cpu = $1;
my $memory = $2;

print "CPU: $cpu \nMEM: $memory\n"; 

# curl -d '{ "auth_token": "LOVEDOCKER2015", "text": "I love Docker!" }' http://localhost:80/widgets/welcome

my $message = "container $container_name has cpu: $cpu and memory: $memory";

# add POST data to HTTP request body
my $ua = LWP::UserAgent->new;

my $dataToShow;
if ($type eq "mem") {
   $dataToShow = $memory;
} else {
   $dataToShow = $cpu;
}
#my $post_data = "{ \"auth_token\": \"LOVEDOCKER2015\", \"current\": \"$cpu\", \"last\": 1}";
my $post_data = "{ \"auth_token\": \"LOVEDOCKER2015\", \"current\": \"$dataToShow\", \"value\": $dataToShow}";

# DEBUG - print "post data is: $post_data\n";

# This should be of the form 
# "http://services-uswest.skytap.com:29610/widgets/$container_name$type";
my $server_endpoint =  "$endpoint/widgets/$container_name$type";

# DEBUG - print "endpoint is: $server_endpoint\n";

my $req = HTTP::Request->new(POST => $server_endpoint);

$req->content($post_data);
 
my $resp = $ua->request($req);
if ($resp->is_success) {
    my $message = $resp->decoded_content;
    print "Done!\n";
}
else {
    print "HTTP POST error code: ", $resp->code, "\n";
    print "HTTP POST error message: ", $resp->message, "\n";
    die "Could not POST";
}
