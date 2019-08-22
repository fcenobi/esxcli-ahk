# esxcli-ahk

AHK script to expand short hands for esxcli commands.

## Installation

- Run the file with AHK

## Usage

Type `!` followed by the beginning two letters of each namespace, that you want to expand.

```text
!essysycoge --> [es]xcli [sy]stem [sy]slog [co]nfig [ge]t
```

## Limitations

There is currently no shorthand for the following commands, as this would be ambigous. Maybe solving this with an AHK overlay that prompts the user to choose the intended command?

| Command                                           | ShortName        |
|:--------------------------------------------------|:-----------------|
| esxcli fcoe nic disable                           | esfcnidi         |
| esxcli fcoe nic discover                          | esfcnidi         |
| esxcli iscsi adapter discovery statictarget       | esisaddist       |
| esxcli iscsi adapter discovery status             | esisaddist       |
| esxcli iscsi networkportal ipconfig               | esisneip         |
| esxcli iscsi networkportal ipv6config             | esisneip         |
| esxcli iscsi networkportal ipconfig get           | esisneipge       |
| esxcli iscsi networkportal ipv6config get         | esisneipge       |
| esxcli iscsi networkportal ipconfig set           | esisneipse       |
| esxcli iscsi networkportal ipv6config set         | esisneipse       |
| esxcli network ip dns search                      | esneipdnse       |
| esxcli network ip dns server                      | esneipdnse       |
| esxcli network ip dns search add                  | esneipdnsead     |
| esxcli network ip dns server add                  | esneipdnsead     |
| esxcli network ip dns search list                 | esneipdnseli     |
| esxcli network ip dns server list                 | esneipdnseli     |
| esxcli network ip dns search remove               | esneipdnsere     |
| esxcli network ip dns server remove               | esneipdnsere     |
| esxcli network ip interface ipv4                  | esneipinip       |
| esxcli network ip interface ipv6                  | esneipinip       |
| esxcli network ip interface ipv4 address          | esneipinipad     |
| esxcli network ip interface ipv6 address          | esneipinipad     |
| esxcli network ip interface ipv4 address list     | esneipinipadli   |
| esxcli network ip interface ipv6 address list     | esneipinipadli   |
| esxcli network ip interface ipv4 get              | esneipinipge     |
| esxcli network ip interface ipv6 get              | esneipinipge     |
| esxcli network ip interface ipv4 set              | esneipinipse     |
| esxcli network ip interface ipv6 set              | esneipinipse     |
| esxcli network ip neighbor                        | esneipne         |
| esxcli network ip netstack                        | esneipne         |
| esxcli network ip neighbor list                   | esneipneli       |
| esxcli network ip netstack list                   | esneipneli       |
| esxcli network ip neighbor remove                 | esneipnere       |
| esxcli network ip netstack remove                 | esneipnere       |
| esxcli network ip route ipv4                      | esneiproip       |
| esxcli network ip route ipv6                      | esneiproip       |
| esxcli network ip route ipv4 add                  | esneiproipad     |
| esxcli network ip route ipv6 add                  | esneiproipad     |
| esxcli network ip route ipv4 list                 | esneiproipli     |
| esxcli network ip route ipv6 list                 | esneiproipli     |
| esxcli network ip route ipv4 remove               | esneiproipre     |
| esxcli network ip route ipv6 remove               | esneiproipre     |
| esxcli network nic selftest                       | esnenise         |
| esxcli network nic set                            | esnenise         |
| esxcli network vswitch dvs vmware lacp stats      | esnevsdvvmlast   |
| esxcli network vswitch dvs vmware lacp status     | esnevsdvvmlast   |
| esxcli network vswitch dvs vmware lacp stats get  | esnevsdvvmlastge |
| esxcli network vswitch dvs vmware lacp status get | esnevsdvvmlastge |
| esxcli network vswitch standard policy            | esnevsstpo       |
| esxcli network vswitch standard portgroup         | esnevsstpo       |
| esxcli network vswitch standard policy security   | esnevsstpose     |
| esxcli network vswitch standard portgroup set     | esnevsstpose     |
| esxcli nvme device namespace delete               | esnvdenade       |
| esxcli nvme device namespace detach               | esnvdenade       |
| esxcli storage core claiming                      | esstcocl         |
| esxcli storage core claimrule                     | esstcocl         |
| esxcli storage core claiming reclaim              | esstcoclre       |
| esxcli storage core claimrule remove              | esstcoclre       |
| esxcli storage core device set                    | esstcodese       |
| esxcli storage core device setconfig              | esstcodese       |
| esxcli storage nfs                                | esstnf           |
| esxcli storage nfs41                              | esstnf           |
| esxcli storage nfs add                            | esstnfad         |
| esxcli storage nfs41 add                          | esstnfad         |
| esxcli storage nfs list                           | esstnfli         |
| esxcli storage nfs41 list                         | esstnfli         |
| esxcli storage nfs param                          | esstnfpa         |
| esxcli storage nfs41 param                        | esstnfpa         |
| esxcli storage nfs param get                      | esstnfpage       |
| esxcli storage nfs41 param get                    | esstnfpage       |
| esxcli storage nfs param set                      | esstnfpase       |
| esxcli storage nfs41 param set                    | esstnfpase       |
| esxcli storage nfs remove                         | esstnfre         |
| esxcli storage nfs41 remove                       | esstnfre         |
| esxcli storage san fc                             | esstsafc         |
| esxcli storage san fcoe                           | esstsafc         |
| esxcli storage san fc list                        | esstsafcli       |
| esxcli storage san fcoe list                      | esstsafcli       |
| esxcli storage san fc reset                       | esstsafcre       |
| esxcli storage san fcoe reset                     | esstsafcre       |
| esxcli storage san fc stats                       | esstsafcst       |
| esxcli storage san fcoe stats                     | esstsafcst       |
| esxcli storage san fc stats get                   | esstsafcstge     |
| esxcli storage san fcoe stats get                 | esstsafcstge     |
| esxcli storage vvol vasacontext                   | esstvvva         |
| esxcli storage vvol vasaprovider                  | esstvvva         |
| esxcli system secpolicy                           | essyse           |
| esxcli system security                            | essyse           |
| esxcli system settings                            | essyse           |
| esxcli system settings kernel                     | essyseke         |
| esxcli system settings keyboard                   | essyseke         |
| esxcli vsan dataprotection                        | esvsda           |
| esxcli vsan datastore                             | esvsda           |
| esxcli vsan dataprotection recovery               | esvsdare         |
| esxcli vsan datastore remove                      | esvsdare         |
| esxcli vsan debug mob start                       | esvsdemost       |
| esxcli vsan debug mob status                      | esvsdemost       |
| esxcli vsan debug mob stop                        | esvsdemost       |
| esxcli vsan network ip                            | esvsneip         |
| esxcli vsan network ipv4                          | esvsneip         |
| esxcli vsan network ip add                        | esvsneipad       |
| esxcli vsan network ipv4 add                      | esvsneipad       |
| esxcli vsan network ip remove                     | esvsneipre       |
| esxcli vsan network ipv4 remove                   | esvsneipre       |
| esxcli vsan network ip set                        | esvsneipse       |
| esxcli vsan network ipv4 set                      | esvsneipse       |
| esxcli vsan network remove                        | esvsnere         |
| esxcli vsan network restore                       | esvsnere         |
