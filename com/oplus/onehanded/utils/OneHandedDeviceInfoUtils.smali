.class public Lcom/oplus/onehanded/utils/OneHandedDeviceInfoUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "OneHandedDeviceInfoUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceCornerRadius(Landroid/content/res/Resources;)F
    .registers 4

    :try_start_0
    const-string v0, "ro.oplus.display.rc.size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    array-length v1, v0

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x10

    int-to-float p0, p0

    goto :goto_36

    :cond_1f
    const/4 p0, 0x0

    goto :goto_36

    :cond_21
    sget v0, Lcom/android/wm/shell/R$dimen;->one_handed_rounded_corner_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_36

    :catch_28
    move-exception v0

    sget-object v1, Lcom/oplus/onehanded/utils/OneHandedDeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string v2, "getDeviceCornerRadius() fail: "

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget v0, Lcom/android/wm/shell/R$dimen;->one_handed_rounded_corner_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_36
    return p0
.end method
