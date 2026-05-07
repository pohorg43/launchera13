.class public final Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;
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

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "metis_strengthen_service_toggle"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oplus/providers/AppSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    move v1, v2

    :cond_18
    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasMetisPermission(Z)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    invoke-static {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->access$refreshUSCardContainer(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;->this$0:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasMetisPermission()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "Metis Permission changed, new Value: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "USRelatedPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
