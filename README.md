# NAME

    PDLx::Mask - Mask multiple piddles with two way feedback
    PDLx::MaskedData - Automatically synchronize data and valid data masks

# SYNOPSIS

    use 5.10.0;

    use PDLx::MaskedData;

    $data1 = PDLx::MaskedData->new( sequence(9) );
    say $data1;    # [0 1 2 3 4 5 6 7 8]

    # grab the mask
    $mask = $data1->mask;
    say $mask;    # [1 1 1 1 1 1 1 1 1]


    # create another masked piddle with the same mask
    my $pdl = $data1 + 1;

    $data2 = PDLx::MaskedData->new( $pdl, $mask );

    say $data2;    # [1 2 3 4 5 6 7 8 9]

    # update the mask
    $mask->set( 3, 0 );
    say $mask;     # [1 1 1 0 1 1 1 1 1]

    # and see it propagate
    say $data1;    # [0 1 2 0 4 5 6 7 8]
    say $data2;    # [1 2 3 0 5 6 7 8 9]

    # use bad values for $data1
    $data1->badflag(1);
    # notice that the invalid element is now bad
    say $data1;    # [0 1 2 BAD 4 5 6 7 8]

    # push invalid values upstream to the shared mask
    $data1->upstream_mask(1);
    $data1->setbadat(0);
    say $data1;    # [BAD 1 2 BAD 4 5 6 7 8]

    # see the mask change
    say $mask;     # [0 1 1 0 1 1 1 1 1]

    # and see the other piddle change
    say $data2;    # [0 2 3 0 5 6 7 8 9]

# DESCRIPTION

    Typically PDL uses bad values to mark elements in a piddle which contain
    invalid data. When multiple piddles should have the same elements marked
    as invalid, a separate *mask* piddle (whose values are true for valid
    data and false otherwise) is used.

    PDLx::Mask in concert with PDLx::MaskedData simplifies the management of
    mutiple piddles sharing the same mask. PDLx::Mask is the shared mask,
    and PDLx::MaskedData is a specialized piddle which will dynamically
    respond to changes in the mask, so that they are always up-to-date.

    Additionally, invalid elements in the data piddles may be added to the
    shared mask, so that there is a consistent view of valid elements across
    all piddles.

# LICENSE AND COPYRIGHT

Copyright (c) 2016 The Smithsonian Astrophysical Observatory

PDLx::Mask is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details.

You should have received a copy of the GNU General Public License along
with this program. If not, see &lt;http://www.gnu.org/licenses/>.

# AUTHOR

    Diab Jerius <djerius@cpan.org>
