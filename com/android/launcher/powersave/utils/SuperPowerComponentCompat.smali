.class public Lcom/android/launcher/powersave/utils/SuperPowerComponentCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OLD_CLOCK_CLASS_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12004c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/powersave/utils/SuperPowerComponentCompat;->OLD_CLOCK_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isClockCompat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "SuperPower"

    const/4 v1, 0x0

    if-eqz p0, :cond_56

    if-eqz p1, :cond_56

    if-eqz p2, :cond_56

    const v2, 0x7f12004b

    invoke-static {v2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_42

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Lcom/android/launcher/powersave/utils/SuperPowerComponentCompat;->OLD_CLOCK_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    :cond_2d
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/launcher/powersave/utils/SuperPowerComponentCompat;->OLD_CLOCK_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    goto :goto_42

    :cond_40
    move p2, v1

    goto :goto_43

    :cond_42
    :goto_42
    move p2, v4

    :goto_43
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    if-eqz p2, :cond_50

    move v1, v4

    :cond_50
    const-string p0, "isClockCompat = "

    invoke-static {p0, v1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v1

    :cond_56
    const-string p0, "isClockCompat = false, cn is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
