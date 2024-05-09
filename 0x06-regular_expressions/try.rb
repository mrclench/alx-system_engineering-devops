import re

log_entry = "[from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]"

from_match = re.search(r'(?<=from:).*?(?=\])', log_entry)
to_match = re.search(r'(?<=to:).*?(?=\])', log_entry)
flags_match = re.search(r'(?<=flags:).*?(?=\])', log_entry)

if from_match:
    from_value = from_match.group()
if to_match:
    to_value = to_match.group()
if flags_match:
    flags_value = flags_match.group()

print(f"From: {from_value}")
print(f"To: {to_value}")
print(f"Flags: {flags_value}")