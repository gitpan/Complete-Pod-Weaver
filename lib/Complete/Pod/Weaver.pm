package Complete::Pod::Weaver;

our $DATE = '2014-12-28'; # DATE
our $VERSION = '0.01'; # VERSION

use 5.010001;
use strict;
use warnings;
#use Log::Any '$log';

use Complete;

our %SPEC;
require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT_OK = qw(
                       complete_weaver_plugin
                       complete_weaver_section
                       complete_weaver_bundle
                       complete_weaver_role
               );

my %common_args = (
        word => {
            schema => 'str*',
            req => 1,
            pos => 0,
        },
        ci => {
            summary => 'Whether to do case-insensitive search',
            schema  => 'bool*',
        },
        map_case => {
            schema => 'bool',
        },
        exp_im_path => {
            schema => 'bool',
        },
);

$SPEC{complete_weaver_plugin} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver plugin names',
    args => {
        %common_args,
    },
    result_naked => 1,
};
sub complete_weaver_plugin {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';
    my $ci          = $args{ci} // $Complete::OPT_CI;
    my $map_case    = $args{map_case} // $Complete::OPT_MAP_CASE;
    my $exp_im_path = $args{exp_im_path} // $Complete::OPT_EXP_IM_PATH;

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::Plugin',
        ci=>$ci, map_case=>$map_case, exp_im_path=>$exp_im_path,
    );
}

$SPEC{complete_weaver_section} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver section names',
    args => {
        %common_args,
    },
    result_naked => 1,
};
sub complete_weaver_section {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';
    my $ci          = $args{ci} // $Complete::OPT_CI;
    my $map_case    = $args{map_case} // $Complete::OPT_MAP_CASE;
    my $exp_im_path = $args{exp_im_path} // $Complete::OPT_EXP_IM_PATH;

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::Section',
        ci=>$ci, map_case=>$map_case, exp_im_path=>$exp_im_path,
    );
}

$SPEC{complete_weaver_role} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver role names',
    args => {
        %common_args,
    },
    result_naked => 1,
};
sub complete_weaver_role {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';
    my $ci          = $args{ci} // $Complete::OPT_CI;
    my $map_case    = $args{map_case} // $Complete::OPT_MAP_CASE;
    my $exp_im_path = $args{exp_im_path} // $Complete::OPT_EXP_IM_PATH;

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::Role',
        ci=>$ci, map_case=>$map_case, exp_im_path=>$exp_im_path,
    );
}

$SPEC{complete_weaver_bundle} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver bundle names',
    args => {
        %common_args,
    },
    result_naked => 1,
};
sub complete_weaver_bundle {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';
    my $ci          = $args{ci} // $Complete::OPT_CI;
    my $map_case    = $args{map_case} // $Complete::OPT_MAP_CASE;
    my $exp_im_path = $args{exp_im_path} // $Complete::OPT_EXP_IM_PATH;

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::PluginBundle',
        ci=>$ci, map_case=>$map_case, exp_im_path=>$exp_im_path,
    );
}

1;
# ABSTRACT: Complete with installed Pod::Weaver section names

__END__

=pod

=encoding UTF-8

=head1 NAME

Complete::Pod::Weaver - Complete with installed Pod::Weaver section names

=head1 VERSION

This document describes version 0.01 of Complete::Pod::Weaver (from Perl distribution Complete-Pod-Weaver), released on 2014-12-28.

=head1 SYNOPSIS

=head1 FUNCTIONS


=head2 complete_weaver_bundle(%args) -> any

Complete with installed Pod::Weaver bundle names.

Arguments ('*' denotes required arguments):

=over 4

=item * B<ci> => I<bool>

Whether to do case-insensitive search.

=item * B<exp_im_path> => I<bool>

=item * B<map_case> => I<bool>

=item * B<word>* => I<str>

=back

Return value:

 (any)


=head2 complete_weaver_plugin(%args) -> any

Complete with installed Pod::Weaver plugin names.

Arguments ('*' denotes required arguments):

=over 4

=item * B<ci> => I<bool>

Whether to do case-insensitive search.

=item * B<exp_im_path> => I<bool>

=item * B<map_case> => I<bool>

=item * B<word>* => I<str>

=back

Return value:

 (any)


=head2 complete_weaver_role(%args) -> any

Complete with installed Pod::Weaver role names.

Arguments ('*' denotes required arguments):

=over 4

=item * B<ci> => I<bool>

Whether to do case-insensitive search.

=item * B<exp_im_path> => I<bool>

=item * B<map_case> => I<bool>

=item * B<word>* => I<str>

=back

Return value:

 (any)


=head2 complete_weaver_section(%args) -> any

Complete with installed Pod::Weaver section names.

Arguments ('*' denotes required arguments):

=over 4

=item * B<ci> => I<bool>

Whether to do case-insensitive search.

=item * B<exp_im_path> => I<bool>

=item * B<map_case> => I<bool>

=item * B<word>* => I<str>

=back

Return value:

 (any)

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Complete-Pod-Weaver>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-Complete-Pod-Weaver>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Complete-Pod-Weaver>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
