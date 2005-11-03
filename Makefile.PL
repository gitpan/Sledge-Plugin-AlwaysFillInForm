use ExtUtils::MakeMaker;
WriteMakefile(
        'NAME'         => 'Sledge::Plugin::AlwaysFillInForm',
        'VERSION_FROM' => 'lib/Sledge/Plugin/AlwaysFillInForm.pm', # finds $VERSION
        'PREREQ_PM'    => {
                Test::More => 0.32,
        },
);
