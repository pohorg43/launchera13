.class public final Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuGuiderConfigObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;-><init>(Landroid/os/Handler;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuGuiderConfigObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    const-string p1, "USRelatedPermissionManager"

    const-string p2, "Xiao Bu Guider Config Observer"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuGuiderConfigObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->assistantScreenGuiderConfigChange(Landroid/content/Context;)V

    return-void
.end method
