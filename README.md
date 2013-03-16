# Address Validation Library

Some classes to manipulate and analyze street addresses.

## Installation

I have complied a gem, but not sure if it really works as there is no bin/executable. Can be used by just copying the contents
of /lib to your project.
## Features/Problems

The main usage is to translate addresses into a hash that can be used in other ways. The important difference is that the Address object has some logic to its hash. The order of the key/value pairs matters. An address with the ":dir" before the name runs east-west and with it at the end runs north-south.
"Flagged" addresses are not necessarily wrong, but need to be inspected as they may go against normal naming conventions for King County. (i.e. they should always have a ":dir", or that ":dir" on ":type => ave" should be last but may not be true in the city limits.


## Usage

The code describes an AddressList class that takes a text file of addresses, one per line, and creates both an array containing
each line, and an array of hashes with each item being an address split into it's components.
{:number => 24611, :name => '116', :suffix => 'TH', :type => 'AVE', :dir => 'SE'}

There are methods for the Address class that can add or remove the suffix, depending on what your dispatch system requires.
It can also produce text files of the address list, the list of hashed addresses, and a yaml file of all address hashes.

spec/address_task.rb shows a sample usage against the file spec/addresses.txt, a file of about 39,000 addresses. So if you run these this it will take a minute or two to process.


## LICENSE

http://opensource.org/licenses/MIT.