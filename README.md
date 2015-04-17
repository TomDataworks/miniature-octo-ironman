# Miniature Octo Ironman

Ever have a drive which you can get a little bit of data from, and you are pretty sure it's the drive controller? Maybe you could buy a whole drive to salvage the controller from, but what if you just don't feel like the risk that some slightly different firmware will completely hose your data?

You would have had to babysit the backup process, constantly cycling power, perhaps making some mistakes. ddrescue is a powerful tool, but it's only useful if the system can talk to the drive at all. This is a poor man's data recovery tool, and it's by no means fast. But it can get the job done.

## Tuning
Adjust the file paths in config.sh for your particular situation, as well as the ethernet address. You will also want to adjust the timeout so that the system will have time to go into suspend mode and cool down a little.

## Ideal Setup
You want a network booted operating system to run the recovery machine on, and you certainly can't use the failing drive. The output file can be on a local drive, or a network mounted partition. You must have another computer which has a Bourne-like shell. Desktop, laptop, 20 year old dinosaur, doesn't matter. Yeah, even a rooted android phone could do it.

## Without Network Boot
If you've only got a CD to use for recovery, you will need a way to notify the manager script that the recovery system needs to be awakened. The easiest, and fastest way to achieve this is using a network mounted directory with NFS. CIFS or SSHFS would also work, but it might take some more configuration.
