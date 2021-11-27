use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::Ninja;

alien_diag 'Alien::Ninja';
alien_ok 'Alien::Ninja';

run_ok([ Alien::Ninja->exe, qw(--version) ])
  ->success
  ->out_like(qr/[0-9\.]+/);

done_testing;
