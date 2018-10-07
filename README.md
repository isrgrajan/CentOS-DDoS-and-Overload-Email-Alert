# CentOs-DDoS-and-Overload-Email-Alert
SSH Script to detect System overload in CentOS and send notification to admin using the mail() server.

### How to Install?
1. Download `is-checkload.sh` script file.
2. Upload it to your CentOS server.
3. Replace **YOUR-EMAIL@PROVIDER.COM** with your email address in the `is-checkload.sh`
4. By default you will get email alerts when the CPU reaches level 2.
5. You can increase/decrease the default load by replacing the value of `trigger=2.00`

### How to schedule the alert?
In order to schedule the alert you need to add the cron-job.
For instance if you want the system to check the average limit in every 5 minute you can 

`*/5 * * * * bash /YOUR-PATH/is-checkload.sh >/dev/null 2>&1`

## Support
For any help and support you may reach the developer at https://www.isrgrajan.com/contact
