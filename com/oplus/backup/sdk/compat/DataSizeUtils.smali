.class public Lcom/oplus/backup/sdk/compat/DataSizeUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACCOUNT_FILE_SIZE:J = 0x26cL

.field private static final BROWSER_FILE_SIZE:J = 0x15eL

.field private static final CALENDAR_FILE_SIZE:J = 0x2bcL

.field private static final CALLRECORD_FILE_SIZE:J = 0x1c2L

.field private static final CLOCK_FILE_SIZE:J = 0xfaL

.field private static final CONTACTS_BLACKLIST_FILE_SIZE:J = 0xaaL

.field private static final CONTACTS_HEAD_SIZE:J = 0x7800L

.field private static final CONTACTS_TEXT_SIZE:J = 0x190L

.field private static final LAUNCHER_FILE_SIZE:J = 0x6e000L

.field private static final MMS_FILE_SIZE:J = 0x3e800L

.field private static final SMS_FILE_SIZE:J = 0x2eeL

.field private static final SYSTEM_SETTING_FILE_SIZE:J = 0x14000L

.field private static final WEATHER_FILE_SIZE:J = 0x140L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimateSize(II)J
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_56

    if-eq p0, v1, :cond_51

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x110

    if-eq p0, v0, :cond_47

    const/16 v0, 0x120

    if-eq p0, v0, :cond_44

    const/16 v0, 0x130

    if-eq p0, v0, :cond_41

    const/16 v0, 0x140

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x150

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x160

    if-eq p0, v0, :cond_37

    const/16 v0, 0x180

    if-eq p0, v0, :cond_33

    const/16 v0, 0x250

    if-eq p0, v0, :cond_30

    const-wide/16 p0, 0x0

    goto :goto_60

    :cond_30
    const-wide/16 v0, 0xaa

    goto :goto_53

    :cond_33
    const-wide/32 p0, 0x14000

    goto :goto_60

    :cond_37
    const-wide/32 p0, 0x6e000

    goto :goto_60

    :cond_3b
    const-wide/16 p0, 0x26c

    goto :goto_60

    :cond_3e
    const-wide/16 v0, 0x140

    goto :goto_53

    :cond_41
    const-wide/16 v0, 0x15e

    goto :goto_53

    :cond_44
    const-wide/16 v0, 0xfa

    goto :goto_53

    :cond_47
    const-wide/16 v0, 0x1c2

    goto :goto_53

    :cond_4a
    const-wide/16 v0, 0x2bc

    goto :goto_53

    :cond_4d
    const-wide/32 v0, 0x3e800

    goto :goto_53

    :cond_51
    const-wide/16 v0, 0x2ee

    :goto_53
    int-to-long p0, p1

    mul-long/2addr p0, v0

    goto :goto_60

    :cond_56
    const-wide/16 v2, 0x190

    int-to-long v4, p1

    mul-long/2addr v4, v2

    const-wide/16 v2, 0x7800

    div-int/2addr p1, v1

    int-to-long p0, p1

    mul-long/2addr p0, v2

    add-long/2addr p0, v4

    :goto_60
    return-wide p0
.end method
