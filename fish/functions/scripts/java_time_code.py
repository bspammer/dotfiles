import subprocess
import sys
from datetime import datetime

now = datetime.now()
timestamp = now.strftime("%s")[::-1]
timestamp = [timestamp[i:i+3][::-1] for i in range(0, len(timestamp), 3)]
timestamp.reverse()
timestamp = "_".join(timestamp)
print(now.strftime("// %a %b %d %H:%M:%S %Y"))
print("private static final Instant INSTANT = Instant.ofEpochSecond(%s);" % timestamp)
print("private static final Clock CLOCK = Clock.fixed(INSTANT, ZoneId.of(\"Europe/London\"));")
