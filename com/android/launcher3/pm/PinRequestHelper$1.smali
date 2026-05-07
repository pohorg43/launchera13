.class Lcom/android/launcher3/pm/PinRequestHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$acceptDelay:J

.field public final synthetic val$request:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public constructor <init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V
    .registers 4

    iput-wide p1, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$acceptDelay:J

    iput-object p3, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$acceptDelay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    iget-object v0, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    :cond_12
    return-void
.end method
