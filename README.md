#  Buggy Layout in `MFMessageComposeViewController`

This example project shows an issue with the message composere controller from
`MessageUI` framework.

As long as the list of recipients is small, all is fine.

![Small number of phone numbers](images/msg-composer__small.png "MFMessageComposeViewController with few number" width=120px)

When the number of recipient becomes too large, it pushes the message editor
and it become unreachable.

![Large number of phone numbers](images/msg-composer__large.png "MFMessageComposeViewController with too many number" width=120px)
