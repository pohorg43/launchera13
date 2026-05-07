.class public Lcom/oplus/uxicon/ui/util/SimpleModeUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SIMPLE_MODE_ENABLE_KEY:Ljava/lang/String; = "simple_mode_enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerSimpleModeSettingsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 5

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "simple_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_14
    return-void
.end method
