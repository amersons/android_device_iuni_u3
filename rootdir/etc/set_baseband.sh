#!/system/bin/sh

product=`getprop ro.build.product`
# grep the modem partition for baseband version and set it
case "$product" in
        "iuni" | "IUNI" | "U3" | "u3")
        setprop gsm.version.baseband `strings /firmware/image/modem.b21 | grep "^NBW" | head -1`
        ;;
esac