# OpenFAAS Function: faas_ipmitool

This OpenFAAS Function executes IPMITOOL.

## Build faas_ipmitool

```
faas-cli build -f ipmitool.yml
```

## Push faas_ipmitool

```
faas-cli pushy -f ipmitool.yml
```

## Deploy faas_ipmitool

```
faas-cli deploy -f ipmitool.yml
```

## Example Usage:

```
me@foo:~# echo "-Ilanplus -H<IPMI_HOST> -U<IPMI_USER_NAME> -P<IPMI_USER_PASSWD> chassis status" | faas-cli invoke ipmitool
System Power         : on
Power Overload       : false
Power Interlock      : inactive
Main Power Fault     : false
Power Control Fault  : false
Power Restore Policy : previous
Last Power Event     : command
Chassis Intrusion    : inactive
Front-Panel Lockout  : inactive
Drive Fault          : false
Cooling/Fan Fault    : false
Sleep Button Disable : not allowed
Diag Button Disable  : allowed
Reset Button Disable : not allowed
Power Button Disable : allowed
Sleep Button Disabled: false
Diag Button Disabled : true
Reset Button Disabled: false
Power Button Disabled: false
```
