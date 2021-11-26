use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Ninja;

alien_diag 'Alien::Ninja';
alien_ok 'Alien::Ninja';

run_ok([ qw(ninja --version) ])
  ->success
  ->out_like(qr/[0-9\.]+/);

done_testing;
