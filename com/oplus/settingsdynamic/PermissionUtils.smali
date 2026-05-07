.class public Lcom/oplus/settingsdynamic/PermissionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SETTINGS_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.SETTINGS"

.field public static final TAG:Ljava/lang/String; = "PermissionUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oplus.permission.safe.SETTINGS"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "isPermissionGranted ,Requested package pass :"

    const-string v0, "PermissionUtils"

    invoke-static {p0, p1, v0}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method
